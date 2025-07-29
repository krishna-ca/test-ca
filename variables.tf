variable "cluster_name" {
  description = "Name of the EKS cluster to create"
  type        = string
  default     = "test-cluster"
}

variable "vpc_id" {
  description = "ID of the VPC where the EKS cluster will reside"
  type        = string
  default     = "vpc-334343"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
  default     = ["subnet-0e9ae471d8daa03d4", "subnet-0e9ae471d8daa03d5"]
}