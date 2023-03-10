# eks-cluster

Test ENV Terraform config to deploy EKS cluster

setup terraform, awscli, kubectl on your local machine

1. Create user for terraform. User should be included in the Group, which has AmazonEKSClusterPolicy
2. Clone the repo
3. ### Set AWS Credentials in Linux Shell:

```
export AWS_ACCESS_KEY_ID="insert your AWS access key ID"
export AWS_SECRET_ACCESS_KEY="insert your AWS access key"
```

4. terraform init
5. teraform plan
6. terraform apply
