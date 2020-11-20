# AWS Simple EC2 Webserver Module
Terraform module which creates VPC and EC2 resources on AWS.

Supported Resources:
- [VPC](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
- [Subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) - Both Public and Private
- [Internet Gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)
- [Route Table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)
- [Route Table Association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association)
- [Security Group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
- [EC2](https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/tree/master/examples/basic)

## Terraform versions
Terraform 0.12 and newer. Submit pull requests to the master branch