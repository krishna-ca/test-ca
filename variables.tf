variable "region" {
  description = "The AWS Region where resources will be created"
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID for the instance to launch"
  default     = "ami-2323232"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  default     = "subnet-22332"
}

variable "key_name" {
  description = "Name of the key pair for the instance"
  default     = "my-keypair"
}