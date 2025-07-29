terraform {
  required_version = ">= 0.14.0"
}

provider "aws" {
  version = "~> 4.0"
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "26.0.0"
}