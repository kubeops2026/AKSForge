resource_group_name = "AKS-Forge-RG"
location = "eastus"
vnet_name = "kubeops-aks-vnet"
address_space = ["10.0.0.0/16"]
tags = {
  Environment = "Dev"
  Owner       = "Platform Team"
}

subnets = {
  aks = {
    address_prefixes = ["10.0.1.0/24"]
  }

  app = {
    address_prefixes = ["10.0.2.0/24"]
  }
}

cluster_name = "AKS-Forge"
sku_tier  = "Free"
network_profile = {}
default_node_pool = {
  name                        = "system"
  vm_size                     = "Standard_B2s"
  node_count                  = 1
  min_count                   = 1
  max_count                   = 2
  enable_auto_scaling         = true
  os_disk_size_gb             = 64
  max_pods                    = 30
  only_critical_addons_enabled = false
}