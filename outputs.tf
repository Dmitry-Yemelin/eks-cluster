# Output the EKS cluster endpoint URL and certificate authority data
output "eks_cluster_endpoint" {
  value = aws_eks_cluster.demo.endpoint
}

output "eks_cluster_certificate_authority" {
  value = aws_eks_cluster.demo.certificate_authority
}

# Output the worker node IAM instance profile ARN
output "eks_worker_node_instance_profile_arn" {
  value = aws_eks_node_group.private-nodes
}


//https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster
/*
data "aws_eks_cluster" "demo" {
  name = "demo"
}

output "endpoint" {
  value = data.aws_eks_cluster.demo.endpoint
}



output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.demo.certificate_authority[0].data
}

# Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019.
output "identity-oidc-issuer" {
  value = aws_eks_cluster.demo.identity[0].oidc[0].issuer
}
*/
