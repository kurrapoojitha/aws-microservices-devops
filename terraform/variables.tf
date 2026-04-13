variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "microservices-eks"
}

variable "devops_user_arn" {
  description = "IAM user ARN for Kubernetes admin access"
  type        = string
}

