module "aks" {
    source = "../module/child-module/aks"
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    cluster_name        = var.cluster_name
    sku_tier            = var.sku_tier
    network_profile     = var.network_profile
    default_node_pool         = var.default_node_pool
    dns_prefix                = var.dns_prefix
    local_account_disabled    = false
    

}
