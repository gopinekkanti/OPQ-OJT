resource "aws_route_table" "ojt-pub-RT" {
  depends_on = [ aws_vpc.OJT-VPC ]
  vpc_id = aws_vpc.OJT-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.OJT-IGW.id
  }
  tags = {
    Name = "ojt-pub-RT"
  }
}

resource "aws_route_table_association" "ojt-pub-RT-association" {
    subnet_id = aws_subnet.ojt-public-subnet.id
    route_table_id = aws_route_table.ojt-pub-RT.id
}
