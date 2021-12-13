terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.68.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "./credentials"
}

resource "aws_ecr_repository" "app_dev" {
  name                 = "app_dev"

  image_scanning_configuration {
    scan_on_push = true
  }
}
