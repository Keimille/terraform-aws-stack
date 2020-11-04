provider "aws" {
  region = "us-east-1"
}


resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr

  enable_dns_hostnames = true
  tags = {
    Name = "my-vpc"
  }
}


resource "aws_subnet" "public" {
  depends_on = [
    aws_vpc.my-vpc
  ]

  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.my-vpc.id

  # IP Range of this subnet
  cidr_block = var.public-subnet

  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet"
  }
}

# Creating Public subnet!
resource "aws_subnet" "private" {
  depends_on = [
    aws_vpc.my-vpc,
    aws_subnet.public
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.my-vpc.id
  
  # IP Range of this subnet
  cidr_block = var.private-subnet
  
  tags = {
    Name = "Private Subnet"
  }
}