variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "West Europe"
}

variable "key_vault_name" {
  description = "The name of the Azure Key Vault."
  type        = string
}

variable "key_vault_location" {
  description = "The location where the Azure Key Vault will be created."
  type        = string
}

variable "key_vault_resource_group" {
  description = "The resource group in which the Azure Key Vault will be created."
  type        = string
}

variable "tenant_id" {
  description = "The Azure AD tenant ID."
  type        = string
}

variable "client_id" {
  description = "The Client ID for Azure Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret for Azure"
  type        = string
}

variable "terraform_principal_id" {
  description = "The object ID of the Terraform service principal."
  type        = string
}

variable "subscription_id" {
  description = "The subscription ID for Azure"
  type        = string
}

variable "keyvault_tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "my_ip" {
  description = "A mapping of ips to assign to the firewall for whitelisting."
  type        = list(string)
}