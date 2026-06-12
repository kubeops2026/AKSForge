module "vnet" {
    source = ".\terraform-module-v1.0.11\child-module\vnet"
    resource_group_name = var.resource_group_name

  location = var.location

  vnet_name = var.vnet_name

  address_space = var.address_space

  dns_servers = var.dns_servers

  tags = var.tags

  subnets = var.subnets
}
