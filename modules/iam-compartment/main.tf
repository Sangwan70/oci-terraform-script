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
# Compartment
########################

resource "oci_identity_compartment" "identity_compartment" {
  count          = var.compartment_create ? 1 : 0
  compartment_id = var.compartment_id != null ? var.compartment_id : var.tenancy_ocid
  name           = var.compartment_name
  description    = var.compartment_description
  enable_delete  = var.enable_delete
}

data "oci_identity_compartments" "identity_compartment" {
  count          = var.compartment_create ? 0 : 1
  compartment_id = var.compartment_id

  filter {
    name   = "name"
    values = [var.compartment_name]
  }
}

locals {
  compartment_ids        = concat(flatten(data.oci_identity_compartments.identity_compartment.*.compartments), [{ "id" = ""}])
  parent_compartment_ids = concat(flatten(data.oci_identity_compartments.identity_compartment.*.compartments), [{"compartment_id" = ""}])
}
