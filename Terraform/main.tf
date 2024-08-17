terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.62.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-diana-isioma888"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "DianaIsioma"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
} 