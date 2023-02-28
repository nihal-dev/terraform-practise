provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "provisioner-instance" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    "Name" = "Provisioner-Instance"
  }
}