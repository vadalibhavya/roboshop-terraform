module "ec2" {
  for_each = var.instance

  source = "./modules/ec2"

  ami_id                 = each.value["ami_id"]
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = each.value["vpc_security_group_ids"]
  zone_id                = each.value["zone_id"]
  name                   = each.key
  env                    = var.env
}