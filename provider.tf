provider "aws" {
 access_key = "AKIAXFPDNIDGYHPM2I6T"
 secret_key = "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"
 region = "ap-southeast-1"
}

resource "aws_vpc" "myvpc_dev"{
cidr_block = "${var.vpc_cidr_dev}"

}
resource "aws_vpc" "myvpc_prod"{

 cidr_block = "${var.vpc_cidr_prod}"

}
