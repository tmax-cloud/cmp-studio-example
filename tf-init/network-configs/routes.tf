resource "aws_route_table" "test-route-table" {
  route = [
  ]

  tags = {
    Name = "test-route-table"
  }

  vpc_id = aws_vpc.test-vpc.id
}

resource "aws_route_table_association" "my-subnet-association" {
  route_table_id = aws_route_table.test-route-table.id

  subnet_id = aws_subnet.test-subnet-a.id
}