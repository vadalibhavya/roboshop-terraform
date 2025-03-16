# module "ec2" {
#   for_each = var.instance
#
#   source = "./modules/ec2"
#
#   ami_id                 = each.value["ami_id"]
#   instance_type          = each.value["instance_type"]
#   vpc_security_group_ids = each.value["vpc_security_group_ids"]
#   zone_id                = each.value["zone_id"]
#   name                   = each.key
#   env                    = var.env
#   ansible_role = lookup(each.value, "ansible_role",each.key) )
#   vault_token            = ""
# }

module "eks" {
  for_each = 	var.eks
  source = "./modules/eks"
  env    = var.env
  eks_version = each.value["version"]
  subnets = each.value["subnets"]
}