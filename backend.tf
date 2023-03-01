terraform {
  backend "s3" {
    bucket         = "ter-state-file"
    dynamodb_table = "state-locking-s3"
    key            = "instance/terraform.tfstate"
    region         = "ap-south-1"
  }
}

