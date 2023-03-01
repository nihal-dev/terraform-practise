resource "aws_instance" "provisioner_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    "Name" = "Provisioner-Instance"
  }
}


resource "aws_eip_association" "demo-eip-association" {
  instance_id   = aws_instance.provisioner_instance.id
  allocation_id = data.terraform_remote_state.eip.outputs.public_ip_name
}