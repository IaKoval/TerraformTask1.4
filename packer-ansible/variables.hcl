variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "ami_name_prefix" {
  default = "nginx-ami"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "region" {
  default = "us-west-2"
}

variable "ssh_username" {
  default = "ubuntu"
}
