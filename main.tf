provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "r6g.large"

  tags = {
    Name = "example-instance"
  }
}