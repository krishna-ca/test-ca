output "eks_cluster_name" {
  value       = module.eks.eks_cluster_id
  description = "The name of the EKS cluster created"
}

output "eks_cluster_arn" {
  value       = module.eks.eks_cluster_arn
  description = "The Amazon Resource Name (ARN) for the EKS cluster"
}

output "eks_cluster_endpoint" {
  value       = module.eks.eks_cluster_endpoint
  description = "The endpoint URL for the EKS cluster"
}