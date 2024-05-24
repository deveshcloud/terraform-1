resource "aws_iam_user" "this" {
  name = var.name
}

resource "aws_iam_user_policy" "this" {
  user = aws_iam_user.this.name
  policy = var.policy
}

resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}

output "user_name" {
  value = aws_iam_user.this.name
}

output "access_key_id" {
  value = aws_iam_access_key.this.id
}

output "secret_access_key" {
  value = aws_iam_access_key.this.secret
}
