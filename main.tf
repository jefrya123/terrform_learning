provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

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

