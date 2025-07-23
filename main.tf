provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "exam" {
  ami           = "ami-535343"
  instance_type = "t2.micro"
  subnet_id     = "subnet-sdsadfsdf"
  key_name      = "my-keypair"

  vpc_security_group_ids = [
    aws_security_group.example.id
  ]

  user_data = <<-EOF
              #!/bin/bash
              echo "Allow SSH access"
              sudo service iptables stop
              sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
              sudo service iptables start
              EOF
}