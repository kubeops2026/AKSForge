resource "azurerm_container_registry" "acr" {
  name                = azurerm_resource_group.rg.name   
  resource_group_name = azurerm_resource_group.rg.location
  location            = "eastus"

  sku           = "Standard"           # Basic, Standard, or Premium
  admin_enabled = false

  tags = {
    Environment = "Dev"
    Project     = "AKS-Forge"
  }
}
