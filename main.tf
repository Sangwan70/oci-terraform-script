# Generated Terraform script

module "iam_compartment1" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp1"
  compartment_description = "compartment at root level for user1"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment2" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp2"
  compartment_description = "compartment at root level for user2"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment3" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp3"
  compartment_description = "compartment at root level for user3"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment4" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp4"
  compartment_description = "compartment at root level for user4"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment5" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp5"
  compartment_description = "compartment at root level for user5"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment6" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp6"
  compartment_description = "compartment at root level for user6"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment7" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp7"
  compartment_description = "compartment at root level for user7"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment8" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp8"
  compartment_description = "compartment at root level for user8"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment9" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp9"
  compartment_description = "compartment at root level for user9"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment10" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp10"
  compartment_description = "compartment at root level for user10"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment11" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp11"
  compartment_description = "compartment at root level for user11"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment12" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp12"
  compartment_description = "compartment at root level for user12"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment13" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp13"
  compartment_description = "compartment at root level for user13"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment14" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp14"
  compartment_description = "compartment at root level for user14"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


module "iam_compartment15" {
  source                  = "./modules/iam-compartment"
  tenancy_ocid            = var.tenancy_ocid
  compartment_id          = var.tenancy_ocid # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "tseeducomp15"
  compartment_description = "compartment at root level for user15"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

module "iam_users" {
  source       = "./modules/iam-user"
  tenancy_ocid = var.tenancy_ocid
  users = [
    {
      name        = "tseuser1"
      description = "tseuser1 created by Sangwan"
      email       = "tseuser1@tseedu.com"
    },
    {
      name        = "tseuser2"
      description = "tseuser2 created by Sangwan"
      email       = "tseuser2@tseedu.com"
    },
    {
      name        = "tseuser3"
      description = "tseuser3 created by Sangwan"
      email       = "tseuser3@tseedu.com"
    },
    {
      name        = "tseuser4"
      description = "tseuser4 created by Sangwan"
      email       = "tseuser4@tseedu.com"
    },
    {
      name        = "tseuser5"
      description = "tseuser5 created by Sangwan"
      email       = "tseuser5@tseedu.com"
    },
    {
      name        = "tseuser6"
      description = "tseuser6 created by Sangwan"
      email       = "tseuser6@tseedu.com"
    },
    {
      name        = "tseuser7"
      description = "tseuser7 created by Sangwan"
      email       = "tseuser7@tseedu.com"
    },
    {
      name        = "tseuser8"
      description = "tseuser8 created by Sangwan"
      email       = "tseuser8@tseedu.com"
    },
    {
      name        = "tseuser9"
      description = "tseuser9 created by Sangwan"
      email       = "tseuser9@tseedu.com"
    },
    {
      name        = "tseuser10"
      description = "tseuser10 created by Sangwan"
      email       = "tseuser10@tseedu.com"
    },
    {
      name        = "tseuser11"
      description = "tseuser11 created by Sangwan"
      email       = "tseuser11@tseedu.com"
    },
    {
      name        = "tseuser12"
      description = "tseuser12 created by Sangwan"
      email       = "tseuser12@tseedu.com"
    },
    {
      name        = "tseuser13"
      description = "tseuser13 created by Sangwan"
      email       = "tseuser13@tseedu.com"
    },
    {
      name        = "tseuser14"
      description = "tseuser14 created by Sangwan"
      email       = "tseuser14@tseedu.com"
    },
    {
      name        = "tseuser15"
      description = "tseuser15 created by Sangwan"
      email       = "tseuser15@tseedu.com"
    },
  ]
}

module "iam_group1" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup1"
  group_description     = "Group 1"
  user_ids              = [element(module.iam_users.user_id, 0)] # a list of user ocids
  policy_name           = "policy1"
  policy_compartment_id = module.iam_compartment1.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group1.group_name} to use volumes in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to use volume-attachments in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage log-groups in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to read metrics in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to read log-content in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to read metrics in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage tag-namespaces in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage generative-ai-chat in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage generative-ai-text-generation in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage generative-ai-text-summarization in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage generative-ai-text-embedding in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage generative-ai-work-request in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage generative-ai-family in compartment tseeducomp1",
  "Allow group ${module.iam_group1.group_name} to manage data-science-family in compartment tseeducomp1",
]
}


module "iam_group2" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup2"
  group_description     = "Group 2"
  user_ids              = [element(module.iam_users.user_id, 1)] # a list of user ocids
  policy_name           = "policy2"
  policy_compartment_id = module.iam_compartment2.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group2.group_name} to use volumes in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to use volume-attachments in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage log-groups in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to read metrics in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to read log-content in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to read metrics in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage tag-namespaces in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage generative-ai-chat in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage generative-ai-text-generation in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage generative-ai-text-summarization in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage generative-ai-text-embedding in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage generative-ai-work-request in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage generative-ai-family in compartment tseeducomp2",
  "Allow group ${module.iam_group2.group_name} to manage data-science-family in compartment tseeducomp2",
]
}


module "iam_group3" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup3"
  group_description     = "Group 3"
  user_ids              = [element(module.iam_users.user_id, 2)] # a list of user ocids
  policy_name           = "policy3"
  policy_compartment_id = module.iam_compartment3.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group3.group_name} to use volumes in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to use volume-attachments in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage log-groups in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to read metrics in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to read log-content in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to read metrics in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage tag-namespaces in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage generative-ai-chat in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage generative-ai-text-generation in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage generative-ai-text-summarization in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage generative-ai-text-embedding in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage generative-ai-work-request in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage generative-ai-family in compartment tseeducomp3",
  "Allow group ${module.iam_group3.group_name} to manage data-science-family in compartment tseeducomp3",
]
}


module "iam_group4" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup4"
  group_description     = "Group 4"
  user_ids              = [element(module.iam_users.user_id, 3)] # a list of user ocids
  policy_name           = "policy4"
  policy_compartment_id = module.iam_compartment4.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group4.group_name} to use volumes in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to use volume-attachments in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage log-groups in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to read metrics in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to read log-content in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to read metrics in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage tag-namespaces in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage generative-ai-chat in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage generative-ai-text-generation in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage generative-ai-text-summarization in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage generative-ai-text-embedding in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage generative-ai-work-request in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage generative-ai-family in compartment tseeducomp4",
  "Allow group ${module.iam_group4.group_name} to manage data-science-family in compartment tseeducomp4",
]
}


module "iam_group5" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup5"
  group_description     = "Group 5"
  user_ids              = [element(module.iam_users.user_id, 4)] # a list of user ocids
  policy_name           = "policy5"
  policy_compartment_id = module.iam_compartment5.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group5.group_name} to use volumes in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to use volume-attachments in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage log-groups in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to read metrics in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to read log-content in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to read metrics in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage tag-namespaces in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage generative-ai-chat in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage generative-ai-text-generation in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage generative-ai-text-summarization in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage generative-ai-text-embedding in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage generative-ai-work-request in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage generative-ai-family in compartment tseeducomp5",
  "Allow group ${module.iam_group5.group_name} to manage data-science-family in compartment tseeducomp5",
]
}


module "iam_group6" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup6"
  group_description     = "Group 6"
  user_ids              = [element(module.iam_users.user_id, 5)] # a list of user ocids
  policy_name           = "policy6"
  policy_compartment_id = module.iam_compartment6.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group6.group_name} to use volumes in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to use volume-attachments in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage log-groups in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to read metrics in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to read log-content in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to read metrics in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage tag-namespaces in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage generative-ai-chat in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage generative-ai-text-generation in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage generative-ai-text-summarization in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage generative-ai-text-embedding in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage generative-ai-work-request in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage generative-ai-family in compartment tseeducomp6",
  "Allow group ${module.iam_group6.group_name} to manage data-science-family in compartment tseeducomp6",
]
}


module "iam_group7" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup7"
  group_description     = "Group 7"
  user_ids              = [element(module.iam_users.user_id, 6)] # a list of user ocids
  policy_name           = "policy7"
  policy_compartment_id = module.iam_compartment7.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group7.group_name} to use volumes in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to use volume-attachments in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage log-groups in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to read metrics in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to read log-content in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to read metrics in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage tag-namespaces in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage generative-ai-chat in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage generative-ai-text-generation in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage generative-ai-text-summarization in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage generative-ai-text-embedding in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage generative-ai-work-request in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage generative-ai-family in compartment tseeducomp7",
  "Allow group ${module.iam_group7.group_name} to manage data-science-family in compartment tseeducomp7",
]
}


module "iam_group8" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup8"
  group_description     = "Group 8"
  user_ids              = [element(module.iam_users.user_id, 7)] # a list of user ocids
  policy_name           = "policy8"
  policy_compartment_id = module.iam_compartment8.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group8.group_name} to use volumes in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to use volume-attachments in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage log-groups in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to read metrics in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to read log-content in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to read metrics in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage tag-namespaces in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage generative-ai-chat in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage generative-ai-text-generation in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage generative-ai-text-summarization in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage generative-ai-text-embedding in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage generative-ai-work-request in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage generative-ai-family in compartment tseeducomp8",
  "Allow group ${module.iam_group8.group_name} to manage data-science-family in compartment tseeducomp8",
]
}


module "iam_group9" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup9"
  group_description     = "Group 9"
  user_ids              = [element(module.iam_users.user_id, 8)] # a list of user ocids
  policy_name           = "policy9"
  policy_compartment_id = module.iam_compartment9.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group9.group_name} to use volumes in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to use volume-attachments in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage log-groups in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to read metrics in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to read log-content in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to read metrics in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage tag-namespaces in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage generative-ai-chat in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage generative-ai-text-generation in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage generative-ai-text-summarization in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage generative-ai-text-embedding in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage generative-ai-work-request in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage generative-ai-family in compartment tseeducomp9",
  "Allow group ${module.iam_group9.group_name} to manage data-science-family in compartment tseeducomp9",
]
}


module "iam_group10" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup10"
  group_description     = "Group 10"
  user_ids              = [element(module.iam_users.user_id, 9)] # a list of user ocids
  policy_name           = "policy10"
  policy_compartment_id = module.iam_compartment10.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group10.group_name} to use volumes in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to use volume-attachments in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage log-groups in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to read metrics in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to read log-content in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to read metrics in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage tag-namespaces in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage generative-ai-chat in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage generative-ai-text-generation in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage generative-ai-text-summarization in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage generative-ai-text-embedding in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage generative-ai-work-request in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage generative-ai-family in compartment tseeducomp10",
  "Allow group ${module.iam_group10.group_name} to manage data-science-family in compartment tseeducomp10",
]
}


module "iam_group11" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup11"
  group_description     = "Group 11"
  user_ids              = [element(module.iam_users.user_id, 10)] # a list of user ocids
  policy_name           = "policy11"
  policy_compartment_id = module.iam_compartment11.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group11.group_name} to use volumes in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to use volume-attachments in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage log-groups in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to read metrics in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to read log-content in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to read metrics in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage tag-namespaces in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage generative-ai-chat in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage generative-ai-text-generation in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage generative-ai-text-summarization in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage generative-ai-text-embedding in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage generative-ai-work-request in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage generative-ai-family in compartment tseeducomp11",
  "Allow group ${module.iam_group11.group_name} to manage data-science-family in compartment tseeducomp11",
]
}


module "iam_group12" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup12"
  group_description     = "Group 12"
  user_ids              = [element(module.iam_users.user_id, 11)] # a list of user ocids
  policy_name           = "policy12"
  policy_compartment_id = module.iam_compartment12.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group12.group_name} to use volumes in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to use volume-attachments in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage log-groups in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to read metrics in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to read log-content in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to read metrics in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage tag-namespaces in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage generative-ai-chat in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage generative-ai-text-generation in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage generative-ai-text-summarization in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage generative-ai-text-embedding in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage generative-ai-work-request in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage generative-ai-family in compartment tseeducomp12",
  "Allow group ${module.iam_group12.group_name} to manage data-science-family in compartment tseeducomp12",
]
}


module "iam_group13" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup13"
  group_description     = "Group 13"
  user_ids              = [element(module.iam_users.user_id, 12)] # a list of user ocids
  policy_name           = "policy13"
  policy_compartment_id = module.iam_compartment13.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group13.group_name} to use volumes in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to use volume-attachments in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage log-groups in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to read metrics in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to read log-content in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to read metrics in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage tag-namespaces in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage generative-ai-chat in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage generative-ai-text-generation in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage generative-ai-text-summarization in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage generative-ai-text-embedding in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage generative-ai-work-request in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage generative-ai-family in compartment tseeducomp13",
  "Allow group ${module.iam_group13.group_name} to manage data-science-family in compartment tseeducomp13",
]
}


module "iam_group14" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup14"
  group_description     = "Group 14"
  user_ids              = [element(module.iam_users.user_id, 13)] # a list of user ocids
  policy_name           = "policy14"
  policy_compartment_id = module.iam_compartment14.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group14.group_name} to use volumes in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to use volume-attachments in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage log-groups in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to read metrics in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to read log-content in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to read metrics in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage tag-namespaces in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage generative-ai-chat in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage generative-ai-text-generation in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage generative-ai-text-summarization in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage generative-ai-text-embedding in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage generative-ai-work-request in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage generative-ai-family in compartment tseeducomp14",
  "Allow group ${module.iam_group14.group_name} to manage data-science-family in compartment tseeducomp14",
]
}


module "iam_group15" {
  source                = "./modules/iam-group"
  tenancy_ocid          = var.tenancy_ocid
  group_name            = "tsegroup15"
  group_description     = "Group 15"
  user_ids              = [element(module.iam_users.user_id, 14)] # a list of user ocids
  policy_name           = "policy15"
  policy_compartment_id = module.iam_compartment15.compartment_id
  policy_description    = "policy created by Ram N Sangwan"
  policy_statements = [
  "Allow group ${module.iam_group15.group_name} to use volumes in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to use volume-attachments in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage log-groups in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to read metrics in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to read log-content in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to read metrics in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage tag-namespaces in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage generative-ai-chat in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage generative-ai-text-generation in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage generative-ai-text-summarization in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage generative-ai-text-embedding in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage generative-ai-work-request in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage generative-ai-family in compartment tseeducomp15",
  "Allow group ${module.iam_group15.group_name} to manage data-science-family in compartment tseeducomp15",
]
}

