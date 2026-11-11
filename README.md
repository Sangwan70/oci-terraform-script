# oci-terraform-script

Creates training users on OCI: per participant a compartment (`tseeducomp<i>`), a user
(`tseeuser<i>`) with a one-time console password, a group (`tsegroup<i>`) and a policy
(`policy<i>`, attached at tenancy root). Optionally creates a shared compartment
(`tseeduaidp`) for one shared Oracle AI Data Platform instance.

Requires Terraform >= 1.17 (tested target 1.17.1) and oracle/oci provider ~> 9.11.

## Usage
```bash
source env-vars
./maintf.sh 20 main.tf aidppolicies.txt tseeduaidp   # or ./maintf.sh for prompts
terraform init -upgrade
terraform plan
terraform apply
terraform output -json user_credentials             # or open user_credentials.csv
```

## Policy files
- `aidppolicies.txt`  - Oracle AI Data Platform 2026 class (shared instance in `${aidp_comp}`)
- `genaipolicies.txt` - Generative AI class
- empty               - default compute / ADB / OAC policies

Placeholders: `${i}`, `${module.iam_group${i}.group_name}`, `${aidp_comp}`.

## After apply
1. Create the AI Data Platform instance in the shared compartment (as admin).
2. In AIDP, add the users/groups to the shared workspace and give them `Use` on the shared cluster.
3. Distribute `user_credentials.csv`, then delete it. Passwords must be changed at first sign-in.
