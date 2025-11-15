terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 6.0"
    }
  }

    backend "s3" {
        bucket = "my-tfstate-bucket"
        key    = "${var.project_name}/infra.tfstate"
        region = var.region
        dynamodb_table = "tfstate-lock"
    }
}

provider "aws" {
  region = var.region
}