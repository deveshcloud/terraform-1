variable "bucket" {
  type = map(object({
    bucket_name = string
  }))
}


variable "aws_iam_user" {
    type = map(object({
      iam_user_name = string
    }))
  
}