variable "aws_region" {
  description = "The AWS region to create resources in"
  type = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  sensitive = true
}

variable "AWS_ACCESS_KEY_ID" {
  type = string
  sensitive = true
}