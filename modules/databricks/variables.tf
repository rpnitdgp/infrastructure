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


variable "databricks_tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
  default     = {}
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

variable "managed_resource_group_name" {
  description = "The managed resource group for databricks."
  type        = string
}

variable "databricks_workspace_name"{
  description = "The workspace name for databricks."
  type        = string
}

variable "api_service_plan_name" {
  description = "The app service plan name for databricks."
  type        = string
}

variable "app_service_name" {
  description = "The app service plan name for databricks."
  type        = string
}

variable "app_service_location" {
  description = "The location of app service for databricks."
  type        = string
}

variable "app_service_resource_group" {
  description = "The resource group name for app service for databricks."
  type        = string
}