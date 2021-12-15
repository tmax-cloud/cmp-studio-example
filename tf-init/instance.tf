resource "aws_instance" "ubuntu-ssh-server" {
  ami = "ami-0b9064170e32bde34"

  associate_public_ip_address = true

  count = 1

  instance_type = "t2.micro"

  key_name = var.key_pair

  subnet_id = module.aws-network-configs.test-subnet-a-id

  tags = {
    Name = "test-instance"
  }

  vpc_security_group_ids = [module.aws-network-configs.test-sg-id]
}

variable "key_pair" {
  default = "aws-key"
}