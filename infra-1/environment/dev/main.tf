provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
}

module "eks_cluster" {
  source = "../../modules/eks-kubernetes-cluster"

  region          = var.region
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
}

module "node_pools" {
  source           = "../../modules/eks-node-group"
  region           = var.region
  cluster_name     = var.cluster_name
  node_group_name  = var.node_group_name
  node_role_arn    = module.eks_cluster.iam_role_arn
  subnets          = var.subnets
  desired_capacity = var.desired_capacity
  max_capacity     = var.max_capacity
  min_capacity     = var.min_capacity
  instance_type    = var.instance_type
}

module "cdn" {
  source = "../../modules/cdn"

  region             = var.region
  origin_domain_name = var.origin_domain_name
}

module "secrets" {
  source = "../../modules/secrets"

  region             = var.region
  secret_name        = var.secret_name
  secret_description = var.secret_description
  username           = var.username
  password           = var.password
}
