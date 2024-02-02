resource "aws_subnet" "ojt-public-subnet" {
    depends_on = [ aws_vpc.OJT-VPC ]
    vpc_id = aws_vpc.OJT-VPC.id
    availability_zone = var.availability_zone_pub
    cidr_block = var.subnet-pub-cidr
    map_public_ip_on_launch = true
    tags = {
      Name = "ojt-public-subnet"
    }
}

resource "aws_subnet" "ojt-private-subnet" {
    depends_on = [ aws_vpc.OJT-VPC ]
    vpc_id = aws_vpc.OJT-VPC.id
    availability_zone = var.availability_zone_priv
    cidr_block = var.subnet-priv-cidr
    tags = {
      Name = "ojt-private-subnet"
    }
}
