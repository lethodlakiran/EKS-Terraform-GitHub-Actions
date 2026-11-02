terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }

  backend "s3" {
    bucket       = "kiran-terraform-state-2026"
    region       = "us-east-1"
    key          = "eks/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws-region
}
