# main.tf
provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source        = "./ec2"
  ami           = "ami-0cc9838aa7ab1dce7" # Replace with your AMI ID
  instance_type = "t2.micro"
  key_name      = "DEVESHKEY"          # Replace with your key pair name
  subnet_id     = "subnet-07c524d97dd83c71c" # Replace with your subnet ID
  instance_name = "MyInstance"
  tags = {
    Environment = "Development"
    Project     = "MyProject"
  }
}

output "instance_id" {
  value = ec2.instance_id
}

output "public_ip" {
  value = ec2.public_ip
}

output "private_ip" {
  value = ec2.private_ip
}
