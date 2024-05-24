# modules/ec2_instance/main.tf
resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = merge(
    var.tags,
    {
      "Name" = var.instance_name
    }
  )
}
