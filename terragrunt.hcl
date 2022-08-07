remote_state = {
    backend = "s3"
    generate = {
        path      = "backend.tf"
        if_exists = "overwrite"
  }
    config = {
        encrypt        = true
        bucket         = "adrian-lab-kso-q3-terraform-state"
        key            = "${path_relative_to_include()}/terraform.tfstate"
        region         = "us-east-2"
        dynamodb_table = "adrian-terraform-state-locks"
    }
}