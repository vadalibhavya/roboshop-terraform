resource "aws_iam_role" "cluster" {
  name = "${var.env}-eks-cluster-role"
  assume_role_policy = jsondecode({
    version = "2012-10-17"
    statement = [
      {
        action = [
          "sts:AssumeRole",
          "sts:TagSession"
        ]
        principal = {
          service = "eks.amazonaws.com"
        }
        effect = "Allow"

      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.cluster.name
}