data "aws_caller_identity" "current" {
}

resource "aws_eks_access_policy_association" "example" {
  cluster_name  = module.eks.cluster_name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  principal_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/${var.user_name_eks}"
  access_scope {
    type       = "cluster"
  }
}

resource "aws_eks_access_entry" "example" {
  cluster_name      = module.eks.cluster_name
  principal_arn     = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/${var.user_name_eks}"
  type              = "STANDARD"
}


