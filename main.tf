provider "aws" {
    region = "us-east-1"
}


resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr
}