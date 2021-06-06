resource "aws_security_group" "SG-Honey" {
  ingress = [ {
    cidr_blocks = [ "99.227.118.13" ]
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
  } ]

  egress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    to_port = 0
    protocol = "-1"
  } ]
}

provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}