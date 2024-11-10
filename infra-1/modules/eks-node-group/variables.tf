variable "region" {
  description = "The AWS region to deploy the EKS node group."
  type        = string
  default     = "eu-central-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group."
  type        = string
  default     = "example"
}

variable "node_role_arn" {
  description = "The ARN of the IAM role for the node group."
  type        = any
}

variable "subnets" {
  description = "The subnets IDs where the EKS node group will be deployed."
  type        = any
}

variable "desired_capacity" {
  description = "The desired number of worker nodes."
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "The maximum number of worker nodes."
  type        = number
  default     = 3
}

variable "min_capacity" {
  description = "The minimum number of worker nodes."
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "The instance type for the worker nodes."
  type        = string
  default     = "t3.medium"
}
