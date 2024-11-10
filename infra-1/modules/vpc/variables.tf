variable "region" {
  description = "The AWS region to deploy the VPC."
  type        = string
  default     = "us-west-2"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "The availability zones for the subnets."
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}
