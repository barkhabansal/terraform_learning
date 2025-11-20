terraform {
	required_version = ">= 0.12"

	cloud {
		organization = "barkha_terraform_learning"

		workspaces {
			name = "terraform_learning"
		}
	}

	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 5.0"
		}
	}
}

provider "aws" {
	region = var.aws_region
	access_key = var.AWS_ACCESS_KEY_ID
	secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_s3_bucket" "terraform_bucket_resource" {
	bucket = var.bucket_name

	tags = {
		Purpose = "Terraform Learning"
	}
}