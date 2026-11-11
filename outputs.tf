data "oci_identity_tenancy" "this" {
  tenancy_id = var.tenancy_ocid
}

locals {
  console_url = "https://cloud.oracle.com/?tenant=${data.oci_identity_tenancy.this.name}&region=${var.region}"
}

output "iam_users" {
  description = "Map of username to user OCID"
  value       = module.iam_users.name_ocid
}

output "console_url" {
  description = "Console sign-in URL for the participants"
  value       = local.console_url
}

output "user_credentials" {
  description = "Username and one-time console password per user (run: terraform output -json user_credentials)"
  value       = zipmap(module.iam_users.names, module.iam_users.passwords)
  sensitive   = true
}

// Writes user_credentials.csv next to the scripts (chmod 600). Passwords are one-time:
// each user must set a new password at first sign-in. Delete the file after distributing it.
resource "local_sensitive_file" "user_credentials" {
  filename        = "${path.module}/user_credentials.csv"
  file_permission = "0600"
  content = join("\n", concat(
    ["username,one_time_password,console_url"],
    [for idx, name in module.iam_users.names : "${name},${module.iam_users.passwords[idx]},${local.console_url}"]
  ))
}
