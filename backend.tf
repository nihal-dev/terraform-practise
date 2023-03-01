terraform {
  backend "s3" {
    bucket         = "ter-state-file"
    dynamodb_table = "state-locking-s3"
    key            = "instance/terraform.tfstate"
    region         = "ap-south-1"
  }
}

data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
    bucket = "ter-state-file"
    key    = "network/terraform.tfstate"
    region = "ap-south-1"
  }
}

