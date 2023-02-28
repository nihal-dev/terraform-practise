terraform {
  backend "s3" {
    bucket = "ter-state-file"
    key    = "instance/terraform.tfstate"
    region = "ap-south-1"
  }
}