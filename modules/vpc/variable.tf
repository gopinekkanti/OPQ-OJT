variable "vpc-cidr" {
  type = string  
}

variable "availability_zone_pub" {
  type = string
}

variable "availability_zone_priv" {
  type = string
}

variable "subnet-pub-cidr" {
  type = string
}

variable "subnet-priv-cidr" {
  type = string
}

variable "ingress_ports" {
  type = list(string)
  default = [ "22", "80", "8080" ]
}

variable "egress_ports" {
  type = list(string)
  default = [ "22", "80", "8080" ]
}
