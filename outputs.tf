output "vpc_id" {
  description = "The ID of the VPC"
  value       = concat(aws_vpc.my-vpc.*.id, [""])[0]
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = concat(aws_vpc.my-vpc.*.arn, [""])[0]
}

output "webserver_ips" {
  description = "The public IP address of created web server resource"
  value       = concat(aws_instance.web_server.*.public_ip)
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = concat(aws_vpc.my-vpc.*.default_security_group_id, [""])[0]
}