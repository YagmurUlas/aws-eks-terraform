output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

#output "subnet_ids" {
#  description = "The IDs of the subnets."
#  value       = module.vpc.subnet_ids
#}

output "cluster_id" {
  description = "The ID of the EKS cluster."
  value       = module.eks_cluster.cluster_id
}

output "cluster_endpoint" {
  description = "The endpoint of the EKS cluster."
  value       = module.eks_cluster.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "The security group ID of the EKS cluster."
  value       = module.eks_cluster.cluster_security_group_id
}

output "node_group_arn" {
  description = "The ARN of the EKS node group."
  value       = module.node_pools.node_group_arn
}
