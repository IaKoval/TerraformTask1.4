resource "aws_vpc" "eksvpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "eksvpc"
  }
}