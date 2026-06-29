resource "azurerm_storage_account" "storage" {
  name                     = "aksforgtfss01" # Must be globally unique, 3-24 lowercase letters and numbers
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  account_kind             = "StorageV2"
  access_tier              = "Hot"

  https_traffic_only_enabled      = true
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = {
    Environment = "Dev"
    Project     = "AKS-Forge"
    ManagedBy   = "Terraform"
  }
}
