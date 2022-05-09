provider "aws" {
  region = "us-east-1"
}

data "aws_security_group" "vpc_web" {
  id = "sg-03bf042e30040a04e"
}

resource "aws_instance" "test_ec2" {
  ami                    = "ami-0022f774911c1d690"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0168f78ded14b6ec5"
  vpc_security_group_ids = [data.aws_security_group.vpc_web.id]
}