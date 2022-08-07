remote_state = {
    backend = "s3"
    config = {
        encrypt        = true
        bucket         = "adrian-terraform-state"
        key            = "${path_relative_to_include()}/terraform.tfstate"
        region         = "us-east-2"
        dynamodb_table = "adrian-terraform-state-locks"
    }
}