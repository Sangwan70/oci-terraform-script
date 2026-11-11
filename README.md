# oci-terraform-script

Creates training users on OCI: per participant a compartment (`tseeducomp<i>`), a user
(`tseeuser<i>`) with a one-time console password, a group (`tsegroup<i>`) and a policy
(`policy<i>`, attached at tenancy root). Optionally creates a shared compartment
(`tseeduaidp`) for one shared Oracle AI Data Platform instance.

Requires Terraform >= 1.5.7 (OCI Cloud Shell default; also works on 1.17.x) and oracle/oci provider ~> 9.11.

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

## Getting the passwords
The one-time passwords are written to `user_credentials.csv` and are also available from the
Terraform output, which Terraform hides by default because it's marked sensitive:

```bash
terraform output -json user_credentials                      # all users as JSON
terraform output -json user_credentials | jq -r 'to_entries[] | "\(.key)  \(.value)"'   # one per line
```

Things to know before you hand them out:

* One-time passwords: each participant signs in at `https://cloud.oracle.com/?tenant=ramniwas&region=us-ashburn-1` and must set a new password straight away. Users from this run sign in through the Default identity domain.
* Keep the CSV and state file out of git: the passwords are also stored in `terraform.tfstate`. The `.gitignore` already excludes both files, so `git add .` won't push them to GitHub. Delete the CSV from Cloud Shell once you've shared the passwords.
* Resetting a password: if a participant loses theirs before first sign-in, run `terraform apply -replace='module.iam_users.oci_identity_ui_password.this[4]'`. The number is the user number minus 1, so `[4]` is tseuser5. The new password appears in the CSV and output again.

## After apply
1. Create the AI Data Platform instance in the shared compartment (as admin).
2. In AIDP, add the users/groups to the shared workspace and give them `Use` on the shared cluster.
3. Distribute `user_credentials.csv`, then delete it. Passwords must be changed at first sign-in.
