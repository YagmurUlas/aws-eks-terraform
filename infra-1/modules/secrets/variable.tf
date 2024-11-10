variable "region" {
  description = "The AWS region to deploy the secret."
  type        = string
  default     = "us-east-1"
}

variable "secret_name" {
  description = "The name of the secret."
  type        = string
}

variable "secret_description" {
  description = "The description of the secret."
  type        = string
}

variable "username" {
  description = "The username to store in the secret."
  type        = string
}

variable "password" {
  description = "The password to store in the secret."
  type        = string
}
