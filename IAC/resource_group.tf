resource "azurerm_resource_group" "rg" {
  name     = "AKS-Forge-RG"
  location = "eastus"

  tags = {
    Environment = "Dev"
    Project     = "AKS-Forge"
    ManagedBy   = "Terraform"
  }
}
