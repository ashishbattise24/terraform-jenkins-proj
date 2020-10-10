resource "aws_vpc" "myvpc" {
cidr_block = "${var.vpc.cidr}"
instance_tenancy = "${var.tenancy}"
tags = {
  Name = "${terraform.workspace}-vpc"
}
}
