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

Create S3 bucket where remote state should be stored
Update values in provider.tf file with proper details

terraform init
teraform plan
terraform apply

After succesful creation to configure your local kubectl setup run the following command.

```
aws eks --region us-east-2 update-kubeconfig --name demo
```

region, where you setup your EKS cluster
name - name of the EKS cluster

and finally run to test connectivity to the kubernetes cluster in EKS

```
kubectl get svc
```
