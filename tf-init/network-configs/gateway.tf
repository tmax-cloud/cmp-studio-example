resource "aws_internet_gateway" "test-gateway" {
  tags = {
    Name = "test-gateway"
  }

  vpc_id = aws_vpc.test-vpc.id
}