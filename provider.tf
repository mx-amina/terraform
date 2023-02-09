terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key = var.AWS_PUBLICKEY
  secret_key = var.AWS_SECRETKEY
  region     = var.AWS_REGION
}