variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "user_ocid" {}
variable "region" {}
variable "homeregion" {}


terraform {
  required_version = ">= 1.5.7" // This script is intended to run with Terraform v1.5.7
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 6.7.0" // force oci-provider compatible with terraform v1.5.7
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  region           = var.homeregion
}
