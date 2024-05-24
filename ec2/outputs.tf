# modules/ec2_instance/outputs.tf
output "instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "The private IP of the instance"
  value       = aws_instance.this.private_ip
}
