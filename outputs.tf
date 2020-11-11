output "arn" {
  description = "ARN of the VPC"
  value       = aws_vpc.my-vpc.arn
}

output "webserver_ips" {
  value = "${aws_instance.web_server.*.public_ip}"
}