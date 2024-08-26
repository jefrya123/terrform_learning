variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
  default     = "ami-066784287e358dad1"  # Replace with a valid AMI ID for your region
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-unique-bucket-name-terraf0rm"  # Ensure this is globally unique
}

