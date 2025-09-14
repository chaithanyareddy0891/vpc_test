terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.13.0"
    }
  }

  backend "s3" {
    bucket = "aws-vpc-dev"
    key = "expense-vpc1"
    region = "us-east-1"
    dynamodb_table = "learndevops"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}