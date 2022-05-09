output "vpc_id" {
  description = "Output the ID of the primary VPC"
  value       = aws_vpc.vpc.id
}

output "vpc_information" {
  description = "VPC information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment}"
}

output "aws_security_group" {
  description = "Show your SG id port 80"
  value       = "Your SG id is ${aws_security_group.vpc-web.id}"
}


output "aws_security_group" {
  description = "Show your SG id port icmp"
  value       = "Your SG id is ${aws_security_group.vpc-ping.id}"
}