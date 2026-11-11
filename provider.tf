variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "user_ocid" {}
variable "region" {}
variable "homeregion" {}

terraform {
  required_version = ">= 1.17.0" // Tested against Terraform v1.17.1 (latest stable, Oct 2026)
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 9.11" // oracle/oci v9.11.0 (Oct 2026)
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9" // used to write user_credentials.csv
    }
  }
}

// IAM resources (users, groups, policies, compartments) must be created in the home region.
provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  user_ocid    = var.user_ocid
  region       = var.homeregion
}
