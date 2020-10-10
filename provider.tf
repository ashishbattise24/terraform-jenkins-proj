provider "aws" {

 region = "ap-southeast-1"
}

terraform {
 backend "s3" {
   bucket = "myt123"
   key = "terraform.tfstate"
   region = "ap-southeast-1"
  }
 
 }
