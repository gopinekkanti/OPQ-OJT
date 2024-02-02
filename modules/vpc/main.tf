resource "aws_vpc" "OJT-VPC" {
    cidr_block = var.vpc-cidr
    tags = {
      Name = "OJT-VPC"
    }
}
resource "aws_internet_gateway" "OJT-IGW" {
    depends_on = [ aws_vpc.OJT-VPC ]
    vpc_id = aws_vpc.OJT-VPC.id
    tags = {
      Name = "OJT-IGW"
   }
}
