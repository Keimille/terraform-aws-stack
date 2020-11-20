variable "cidr" {
  description = "The CIDR of the VPC. This should be overwritten"
  type        = string
  default     = "0.0.0.0/0"
}

variable "public-subnet" {
  description = "The CIDR of thr Public Subnet. This should be over written"
  type        = string
  default     = "0.0.0.0/0"
}

variable "private-subnet" {
  description = "The CIDR of the Public Subnet. This should be overwritten"
  default     = "0.0.0.0/0"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
}


variable "instance-type" {
  description = "EC2 instance type. Can be overwritten but default is t2.micro"
  type        = string
  default     = "t2.micro"
}

variable "ec2-private-ip" {
  description = "Assign a private ip to ec2 instabceif desired. Must be over written and within a usable address range of private subnet"
  type        = string
  default     = "0.0.0.0"
}

variable "web-private-ip2" {
  default = "10.0.1.6"
}
