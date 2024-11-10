variable "region" {
  description = "AWS region to deploy the EKS cluster."
  type        = string
  default     = "eu-central-1"
}

variable "cluster_name" {
  description = "name of the EKS cluster."
  type        = string
  default     = "dev-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.21"
}

variable "vpc_name" {
  description = "New VPC name where the EKS cluster will be deployed."
  type        = string
}

variable "vpc_version" {
  type = string
}

variable "vpc_cidr" {
  type = string  
}

variable "subnets" {
  description = "The subnets IDs where the EKS cluster will be deployed."
  type        = list(string)
}

variable "azs" {
  description = "The availability zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "The private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "The public subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway"
  type        = bool
}

variable "single_nat_gateway" {
  description = "Single NAT Gateway"
  type        = bool
}

variable "node_group_name" {
  type = string
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
variable "secret_name" {
  type = string
  default = "dev-secret" 
}
variable "secret_description" {
  type = string
}
variable "username" {
  type = string
}
variable "password" {
  type = string  
}
variable "origin_domain_name" {
  type = string  
}
