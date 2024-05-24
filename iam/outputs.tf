output "user_name" {
  description = "The name of the IAM user"
  value       = aws_iam_user.this.name
}

output "access_key_id" {
  description = "The access key ID of the IAM user"
  value       = aws_iam_access_key.this.id
}

output "secret_access_key" {
  description = "The secret access key of the IAM user"
  value       = aws_iam_access_key.this.secret
}
