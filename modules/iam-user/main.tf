// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

terraform {
  required_version = ">= 1.5" // upgraded for Terraform 1.17.x
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 9.0" // oracle/oci 9.x
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


########################
# Console password
########################
// Generates a one-time Console password for each user.
// The user is forced to change it at first sign-in.
resource "oci_identity_ui_password" "this" {
  count   = length(var.users)
  user_id = oci_identity_user.this[count.index].id
}
