provider "aws" {
  profile = "default"
  region  = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "dy-eks-cluster-terraform-state" // Bucket where to SAVE Terraform State
    key    = "dev/eks/terraform.tfstate"      // Object name in the bucket to SAVE Terraform State
    region = "us-east-2"                      // Region where bycket created
  }
}

