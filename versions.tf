variable "terraform_version" {
  default = "~> 1.0"
}

provider "aws" {
  version = var.terraform_version
}