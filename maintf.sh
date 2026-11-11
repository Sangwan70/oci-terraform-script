#!/bin/bash
# Generates a Terraform file that creates, for N participants:
#   - one compartment per user (tseeducomp<i>)
#   - one user per participant (tseeuser<i>) with a one-time console password
#   - one group per user (tsegroup<i>) and one policy per group (policy<i>)
#   - one shared compartment for the shared AI Data Platform instance (optional)
#
# Usage (interactive):  ./maintf.sh
# Usage (non-interactive):
#   ./maintf.sh <num_users> <terraform_file> [policy_file] [shared_compartment]
#   e.g. ./maintf.sh 20 main.tf aidppolicies.txt tseeduaidp
#
# Policy file placeholders (replaced per user):
#   ${i}                                 -> user number
#   ${module.iam_group${i}.group_name}   -> group name of user i
#   ${aidp_comp}                         -> shared compartment name
set -euo pipefail

# Function to capture default policy statements
create_default_policy() {
cat <<'EOF'
[
  "Allow group ${module.iam_group${i}.group_name} to manage volume-family in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to manage repos in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to manage virtual-network-family in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to manage instance-images in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to manage instances in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to inspect instances in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to manage autonomous-database in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to manage analytics-instances in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to read metrics in compartment tseeducomp${i}",
  "Allow group ${module.iam_group${i}.group_name} to read analytics-instance-work-requests in compartment tseeducomp${i}",
]
EOF
}

# Inputs: positional args first, otherwise prompt
num_users="${1:-}"
terraform_file="${2:-}"
policy_file="${3-__ask__}"
aidp_comp="${4:-}"

[[ -z "$num_users" ]]      && read -r -p "Number of Users: " num_users
[[ -z "$terraform_file" ]] && read -r -p "Name of the Terraform File to be generated: " terraform_file
[[ "$policy_file" == "__ask__" ]] && read -r -p "Policy File to be used (leave empty for default): " policy_file
if [[ -z "$aidp_comp" ]]; then
  read -r -p "Shared compartment for the AI Data Platform instance [tseeduaidp] (enter 'none' to skip): " aidp_comp
  aidp_comp="${aidp_comp:-tseeduaidp}"
fi

if ! [[ "$num_users" =~ ^[1-9][0-9]*$ ]]; then
  echo "Number of Users must be a positive integer. Exiting."; exit 1
fi
if [[ "$terraform_file" != *.tf ]]; then
  echo "Terraform file name must end with .tf. Exiting."; exit 1
fi

# Check if policy file exists or should use default
if [[ -z "$policy_file" ]]; then
  policy_statements=$(create_default_policy)
elif [[ -f "$policy_file" ]]; then
  policy_statements=$(cat "$policy_file")
else
  echo "Policy file not found. Exiting."; exit 1
fi

if [[ "$aidp_comp" == "none" ]] && grep -q '\${aidp_comp}' <<<"$policy_statements"; then
  echo "Policy file uses \${aidp_comp} but no shared compartment was given. Exiting."; exit 1
fi

# Initialize file
echo "# Generated Terraform script ($(date '+%Y-%m-%d %H:%M')) - $num_users users" > "$terraform_file"

# Shared compartment for the shared AI Data Platform instance
if [[ "$aidp_comp" != "none" ]]; then
  cat <<EOF >> "$terraform_file"

module "iam_compartment_aidp" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid
  compartment_name        = "$aidp_comp"
  compartment_description = "shared compartment for the class AI Data Platform instance"
  compartment_create      = true # set to false if the compartment already exists
  enable_delete           = true
}
EOF
fi

# Generate compartments
for (( i=1; i<=num_users; i++ ))
do
  cat <<EOF >> "$terraform_file"

module "iam_compartment$i" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp$i"
  compartment_description = "compartment at root level for user$i"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on \`terraform destroy\`, compartment is deleted from the terraform state but not from oci
}
EOF
done

# Generate users (one-time console passwords are created inside the iam-user module)
{
  echo ""
  echo "module \"iam_users\" {"
  echo "  source       = \"./modules/iam-user\""
  echo "  tenancy_ocid = var.tenancy_ocid"
  echo "  users = ["
} >> "$terraform_file"

for (( i=1; i<=num_users; i++ ))
do
  cat <<EOF >> "$terraform_file"
    {
      name        = "tseuser$i"
      description = "tseuser$i created by Sangwan"
      email       = "tseuser$i@tseedu.com"
    },
EOF
done

echo "  ]" >> "$terraform_file"
echo "}" >> "$terraform_file"

# Generate groups with policies.
# Policies are attached at the tenancy root so that one policy can grant access to
# both the user's own compartment and the shared AI Data Platform compartment.
for (( i=1; i<=num_users; i++ ))
do
  policy_data=$(echo "$policy_statements" | sed -e "s/\${i}/$i/g" -e "s/\${aidp_comp}/$aidp_comp/g")
  depends=""
  [[ "$aidp_comp" != "none" ]] && depends="module.iam_compartment_aidp, "
  cat <<EOF >> "$terraform_file"

module "iam_group$i" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup$i"
  group_description     = "Group $i"
  user_ids              = [element(module.iam_users.user_id, $((i-1)))] # a list of user ocids
  policy_name           = "policy$i"
  policy_compartment_id = var.tenancy_ocid
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = $policy_data
  depends_on        = [${depends}module.iam_compartment$i]
}
EOF
done

echo "Terraform script generated successfully in $terraform_file."
