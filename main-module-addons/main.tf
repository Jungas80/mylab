resource "random_string" "random" {
    length = 8
}

data "aws_security_group" "vpc_web" {
  id = "sg-0321a9d9816cb6dde"
}


#id=vpc-0fa9670bec2a00044
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test_ec2" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.micro"
    subnet_id = "subnet-064d36de3fb654feb"
    vpc_security_group_ids = [data.aws_security_group.vpc_web.id]
}