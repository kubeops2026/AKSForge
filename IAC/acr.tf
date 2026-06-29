# ACR
resource "azurerm_container_registry" "acr" {
  name                = "aksforgeacr"  
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  sku           = "Standard"           # Basic, Standard, or Premium
  admin_enabled = false

  tags = {
    Environment = "Dev"
    Project     = "AKS-Forge"
  }
}
