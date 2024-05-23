variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "West Europe"
}

variable "client_id" {
  description = "The Client ID for Azure Service Principal"
  type        = string
}

variable "tenant_id" {
  description = "The Tenant ID for Azure"
  type        = string
}

variable "subscription_id" {
  description = "The subscription ID for Azure"
  type        = string
}


variable "client_secret" {
  description = "The client secret for Azure"
  type        = string
}


variable "network_tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "allowed_ssh_ips" {
  description = "The allowed ssh IP addresses"
  type        = list(string)
}

variable "source_address_prefix" {
  description = "The source address prefix IP addresses"
  type        = string
}

variable "subnet_ids" {
  description = "The list of subnet ids"
  type        = list(string)
}

variable "nsg_name" {
  description = "The name of the network security group."
  type        = string
}

variable "role_definition_name" {
  description = "The name of the role definition to assign."
  type        = string
  default     = "Reader"
}