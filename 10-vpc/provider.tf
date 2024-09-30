terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
    
  backend "s3" {
    bucket = "siva-81s-devops"
    key = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "siva-table-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}