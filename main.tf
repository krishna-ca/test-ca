provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.1/16"
}