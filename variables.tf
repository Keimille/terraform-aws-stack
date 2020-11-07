variable "cidr" {
  default = "10.0.0.0/16"
}

variable "public-subnet" {
  default = "10.0.0.0/24"
}

variable "private-subnet" {
  default = "10.0.1.0/24"
}

variable "amazon-linux" {
  default = "ami-0947d2ba12ee1ff75"
}

variable "instance-type" {
  default = "t2.micro"
}

variable "web-private-ip" {
  default = "10.0.1.5"
}

variable "web-private-ip2" {
  default = "10.0.1.6"
}
