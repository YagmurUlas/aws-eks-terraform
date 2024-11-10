variable "region" {
  description = "The AWS region to deploy the EKS cluster."
  type        = string
  default     = "eu-central-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "prod-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.21"
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed."
  type        = string
}

variable "subnets" {
  description = "The subnets IDs where the EKS cluster will be deployed."
  type        = list(string)
}

variable "desired_capacity" {
  description = "The desired number of worker nodes."
  type        = number
  default     = 3
}

variable "max_capacity" {
  description = "The maximum number of worker nodes."
  type        = number
  default     = 5
}

variable "min_capacity" {
  description = "The minimum number of worker nodes."
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "The instance type for the worker nodes."
  type        = string
  default     = "t3.medium"
}
