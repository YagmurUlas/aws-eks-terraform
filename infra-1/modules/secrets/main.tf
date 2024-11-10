provider "aws" {
  region = var.region
}

resource "aws_secretsmanager_secret" "example" {
  name        = var.secret_name
  description = var.secret_description
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id = aws_secretsmanager_secret.example.id
  secret_string = jsonencode({
    username = var.username
    password = var.password
  })
}

output "secret_arn" {
  description = "The ARN of the secret."
  value       = aws_secretsmanager_secret.example.arn
}
