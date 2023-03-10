variable "region" {
  description = "The AWS region in which to create the resources."
  default     = "us-east-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "env" {
  default = "test"
}



/*
variable "cluster_name" {
  description = "The name to give to the EKS cluster."
  default = "example-eks-cluster"
}

variable "worker_node_count" {
  description = "The number of worker nodes to create."
  default = 2
}

variable "instance_type" {
  description = "The EC2 instance type to use for worker nodes."
  default = "t3.small"
}
*/
