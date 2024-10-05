// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

terraform {
  required_version = ">= 1.0" // terraform version below 1.0 is not tested with this module
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.96" // force downloading oci-provider compatible with terraform v1.0
    }
  }
}

########################
# User
########################
resource "oci_identity_user" "this" {
  count          = length(var.users)
  compartment_id = var.tenancy_ocid
  name           = var.users[count.index].name
  description    = var.users[count.index].description
  email          = var.users[count.index].email == null ? "" : var.users[count.index].email
}

