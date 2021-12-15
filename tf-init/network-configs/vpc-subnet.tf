resource "aws_subnet" "test-subnet-a" {
  availability_zone = "us-east-2a"

  cidr_block = "10.0.1.0/24"

  vpc_id = aws_vpc.test-vpc.id
}

resource "aws_vpc" "test-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "test-vpc"
  }
}