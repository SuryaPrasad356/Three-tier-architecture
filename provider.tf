terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
  backend "s3" {
    bucket = "surya-backend-s3"
    key    = "vpc"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}