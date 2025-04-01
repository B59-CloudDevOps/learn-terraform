module "app" {
  for_each               = var.componets
  source                 = "./app"
  ami                    = var.ami
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids
  name                   = each.key
  zone_id                = var.zone_id
}
