terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Create a VPC
resource "aws_s3_bucket" "ravi20071969" {
  bucket = "my-tf-test-bucket-ravi20071969"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}