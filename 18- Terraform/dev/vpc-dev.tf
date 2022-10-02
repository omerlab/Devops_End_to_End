resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  # instance tenancy means instance will be share it is not a provate resource

  tags = {
    Name = "vpc-dev"
  }
}
