module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.7.0"

  cluster_name    = "microservices-eks"
  cluster_version = "1.29"

  vpc_id = "vpc-0d24f534fe63e74e5"

 subnet_ids = [
  "subnet-03b986f00d999017d", # AZ: us-east-1a, enable Auto-assign IP
  "subnet-01d53a12e56de9bec"  # AZ: us-east-1b, enable Auto-assign IP
]

  eks_managed_node_groups = {
    default = {
      desired_capacity = 1
      min_capacity     = 1
      max_capacity     = 2
      instance_type    = "t3.micro"
    }
  }

  tags = {
    Environment = "dev"
    Project     = "aws-microservices"
  }
}

