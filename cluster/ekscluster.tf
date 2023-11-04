# Create EKS cluster
resource "aws_eks_cluster" "project-eks" {
  name     = "project-eks"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = flatten([module.mynetwork.public_subnets[*].id, module.mynetwork.private_subnets[*].id])
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy
  ]
}


