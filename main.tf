provider "aws" {
  region = "us-east-2"
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"
  name    = "test-cluster-01"
  cluster_version = "1.23"
  vpc_id     = "vpc-334343"
  subnet_ids = ["subnet-0e9ae471d8daa03d4", "subnet-0e9ae471d8daa03d5"]
}