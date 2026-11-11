variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "user_ocid" {}
variable "region" {}
variable "homeregion" {}

terraform {
  required_version = ">= 1.5.7" // works with OCI Cloud Shell (1.5.7) and the latest Terraform (1.17.x)
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
