data "oci_identity_tenancy" "this" {
  tenancy_id = var.tenancy_ocid
}

variable "tenancy_name" {
  description = "Optional: tenancy name for the console URL (used if it cannot be looked up)"
  type        = string
  default     = ""
}

locals {
  // The tenancy name can come back null (e.g. limited permissions or Cloud Shell auth),
  // so fall back to var.tenancy_name, and finally to a URL without the tenant parameter.
  tenancy_name = data.oci_identity_tenancy.this.name != null ? data.oci_identity_tenancy.this.name : var.tenancy_name
  console_url  = local.tenancy_name != "" ? "https://cloud.oracle.com/?tenant=${local.tenancy_name}&region=${var.region}" : "https://cloud.oracle.com/?region=${var.region}"
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
