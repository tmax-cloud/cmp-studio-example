resource "aws_security_group" "test-sg" {
  description = "This security group is for Terraform Test"

  name = "test-sg"

  tags = {
    Name = "test-sg"
  }

  vpc_id = aws_vpc.test-vpc.id
}