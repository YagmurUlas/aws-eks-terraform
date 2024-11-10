provider "aws" {
  region = "eu-central-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"

  name = "staging-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-central-1a", "eu-central-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
}

module "eks_cluster" {
  source = "../modules/eks-kubernetes-cluster"

  region          = "eu-central-1"
  cluster_name    = "staging-cluster"
  cluster_version = "1.21"
  vpc_id          = module.vpc.vpc_id
  subnets         = module.vpc.private_subnets
}

module "node_pools" {
  source = "../modules/eks-node-group"

  region           = "eu-central-1"
  cluster_name     = module.eks_cluster.cluster_id
  node_group_name  = "staging-node-group"
  node_role_arn    = module.eks_cluster.node_groups["eks_nodes"].iam_role_arn
  subnets          = module.vpc.private_subnets
  desired_capacity = 2
  max_capacity     = 4
  min_capacity     = 1
  instance_type    = "t3.medium"
}
