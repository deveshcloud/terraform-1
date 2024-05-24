module "s3" {
  source = "./s3"
  for_each = var.bucket
  bucket_name = each.value.bucket_name
}

module "iam" {
  source = "./iam"
  for_each = var.aws_iam_user
  iam_user_name = each.value.iam_user_name
  
}