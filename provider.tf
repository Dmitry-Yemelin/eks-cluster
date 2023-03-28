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

provider "helm" {
  kubernetes {
    host                   = aws_eks_cluster.demo.endpoint
    cluster_ca_certificate = base64decode(aws_eks_cluster.demo.certificate_authority[0].data)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", aws_eks_cluster.demo.id]
      command     = "aws"
    }
  }
}
