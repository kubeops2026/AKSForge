variable "subscription_id" {
  type = string
}
variable "resource_group_name" {
  description = "Name of the Azure Resource Group where resources will be deployed."
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created."
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network."
  type        = string
}

variable "address_space" {
  description = "List of address spaces for the Virtual Network."
  type        = list(string)
}

variable "dns_servers" {
  description = "List of DNS server IP addresses for the Virtual Network."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Map of tags to assign to resources."
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "Map of subnet configurations."
  type = map(object({
    address_prefixes = list(string)
  }))
}

variable "cluster_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "sku_tier" {
  type    = string
  default = "Standard"
}

variable "default_node_pool" {

  type = object({
    name                  = string
    vm_size               = string
    node_count            = optional(number)
    min_count             = optional(number)
    max_count             = optional(number)
    enable_auto_scaling   = bool
    os_disk_size_gb       = optional(number)
    zones                 = optional(list(string))
    max_pods              = optional(number)
    only_critical_addons_enabled = optional(bool)
  })
}
variable "network_profile" {
  type = object({
    network_plugin    = optional(string, "azure")
    load_balancer_sku = optional(string, "standard")
    dns_service_ip    = optional(string)
    service_cidr      = optional(string)
    outbound_type     = optional(string, "loadBalancer")
  })
  default = null # Isse poora block hi optional ho jata hai
}
