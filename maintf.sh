#!/bin/bash

# Function to capture default policy statements
create_default_policy() {
cat <<EOF
[
  "Allow group \${module.iam_group\${i}.group_name} to manage volume-family in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to manage repos in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to manage virtual-network-family in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to manage instance-images in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to manage instances in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to inspect instances in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to manage autonomous-database in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to manage analytics-instances in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to read metrics in compartment comp\${i}",
  "Allow group \${module.iam_group\${i}.group_name} to read analytics-instance-work-requests in compartment comp\${i}",
]
EOF
}

# Prompt for user input
read -p "Number of Users: " num_users
read -p "Name of the Terraform File to be generated: " terraform_file
read -p "Policy File to be used (leave empty for default): " policy_file

# Check if policy file exists or should use default
if [[ -z "$policy_file" ]]; then
  policy_statements=$(create_default_policy)
else
  if [[ -f "$policy_file" ]]; then
    policy_statements=$(cat "$policy_file")
  else
    echo "Policy file not found. Exiting."
    exit 1
  fi
fi

# Initialize file
echo "# Generated Terraform script" > "$terraform_file"

# Generate compartments and users
for (( i=1; i<=$num_users; i++ ))
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
# Generate users
echo "module \"iam_users\" {" >> "$terraform_file"
echo "  source       = \"./modules/iam-user\"" >> "$terraform_file"
echo "  tenancy_ocid = var.tenancy_ocid" >> "$terraform_file"
echo "  users = [" >> "$terraform_file"

for (( i=1; i<=$num_users; i++ ))
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

# Generate groups with policies
for (( i=1; i<=$num_users; i++ ))
do
  policy_data=$(echo "$policy_statements" | sed "s/\${i}/$i/g")
  cat <<EOF >> "$terraform_file"

module "iam_group$i" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup$i"
  group_description     = "Group $i"
  user_ids              = [element(module.iam_users.user_id, $((i-1)))] # a list of user ocids
  policy_name           = "policy$i"
  policy_compartment_id = module.iam_compartment$i.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = $policy_data
}

EOF
done

echo "Terraform script generated successfully in $terraform_file."
