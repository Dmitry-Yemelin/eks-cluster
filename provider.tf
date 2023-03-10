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

/*
module "vpc" {
  source = "./vpc"
  region = var.region
}

module "eks" {
  source = "./eks"
  region = var.region
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.private_subnets
}

module "key_pair" {
  source = "./key_pair"
}

module "security_groups" {
  source = "./security_groups"
  vpc_id = module.vpc.vpc_id
  eks_cluster_sg_name = module.eks.eks_cluster_sg_name
  eks_node_sg_name = module.eks.eks_node_sg_name
}

output "kubeconfig" {
  value = module.eks.kubeconfig
}
*/
