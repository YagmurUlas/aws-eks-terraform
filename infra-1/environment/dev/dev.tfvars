region             = "eu-central-1"
cluster_name       = "dev-cluster"
cluster_version    = "1.21"
node_group_name    = "case-eks-node-pool-name"
vpc_name           = "dev-env-vpc"
vpc_cidr           = "10.0.0.0/16"
azs                = ["eu-central-1a", "eu-central-1b"]
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets     = ["10.0.3.0/24", "10.0.4.0/24"]
enable_nat_gateway = true
single_nat_gateway = true
subnets            = ["subnet-12345678", "subnet-87654321"]
desired_capacity   = 2
max_capacity       = 3
min_capacity       = 1
instance_type      = "t3.medium"
secret_name        = "dev-secret"
secret_description = "Development environment secret"
username           = "dev_user"
password           = "dev_password"
origin_domain_name = "demo-devops-cases.com"

