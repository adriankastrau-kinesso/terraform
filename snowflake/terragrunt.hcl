terraform {
    source = "git::git@github.com:adriankastrau-kinesso/terragrunt-modules.git//snowflake?ref=v.1.0.0"
}

inputs = {
    create_role = true
    role_name = "terraform_role"
}


include "root" {
  path = find_in_parent_folders()
}
