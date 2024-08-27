provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name	= var.ssh_key_name

  tags = {
    Name = "terraform-example"
  }
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.s3_bucket_name  # Using the variable for the bucket name

  tags = {
    Name = "terraform-example-bucket"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
  description = "The public IP address of the EC2 instance"
}

output "ssh_username" {
  value = "ec2-user"  # Replace with "ubuntu" if using an Ubuntu AMI
  description = "The SSH username for the EC2 instance"
}
