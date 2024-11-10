variable "region" {
  description = "The AWS region to deploy the CloudFront distribution."
  type        = string
  default     = "us-east-1"
}

variable "origin_domain_name" {
  description = "The domain name of the origin for the CloudFront distribution."
  type        = string
}
