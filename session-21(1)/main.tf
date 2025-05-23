module "databases" {
  for_each                   = var.databases
  source                     = "./component"
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  location                   = var.location
  network_security_group_id  = var.network_security_group_id
  name                       = each.key
  rg_name                    = var.rg_name
  storage_image_reference_id = var.storage_image_reference_id
  zone_name                  = var.zone_name
}

module "application" {
  depends_on                 = [module.databases]
  for_each                   = var.applications
  source                     = "./component"
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  location                   = var.location
  network_security_group_id  = var.network_security_group_id
  name                       = each.key
  rg_name                    = var.rg_name
  storage_image_reference_id = var.storage_image_reference_id
  zone_name                  = var.zone_name
}