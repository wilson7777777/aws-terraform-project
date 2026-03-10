terraform {
  # This tells Terraform to store your "Save Game" file in AWS, not on your PC
  backend "s3" {
    bucket         = "my-unique-devops-bucket-2026" 
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# This is a NEW bucket we are asking Terraform to manage for us
resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "nnebi-devops-test-bucket-001"
}
