terraform {
    source = "git::ssh://git@github.com/adriankastrau-kinesso/terragrunt-modules.git//snowflake?ref=v.1.0.4"
}

inputs = {
    # create test role from terraform module
    create_role = true
    role_name = "terraform_role"
}


include "root" {
  path = find_in_parent_folders()
}

