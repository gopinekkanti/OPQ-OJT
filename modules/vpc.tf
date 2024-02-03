variable "vpc_name" {
  description = "Name for the VPC"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags       = { Name = var.vpc_name }
}
