module "vnet" {
    source = "../module/child-module/vnet"
    resource_group_name = azurerm_resource_group.rg.name

  location = azurerm_resource_group.rg.location

  vnet_name = var.vnet_name

  address_space = var.address_space

  dns_servers = var.dns_servers

  tags = var.tags

  subnets = var.subnets
}
