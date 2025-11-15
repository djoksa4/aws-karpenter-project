terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 6.0"
    }
  }

    backend "s3" {
        bucket = "my-tfstate-bucket-0402"
        key    = "$aws-karpenter/infra.tfstate"
        region = "us-east-1"
        dynamodb_table = "tfstate-lock"
    }
}

provider "aws" {
  region = var.region
}