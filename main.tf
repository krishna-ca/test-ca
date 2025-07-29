provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-2323232"
  instance_type = "t2.micro"
  subnet_id     = "subnet-22332"
  key_name      = "my-keypair"

  vpc_security_group_ids = [
    aws_security_group.example.id
  ]
}

resource "aws_security_group_rule" "ssh" {
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group" "example" {
  name        = "terraform-example"
}