provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  tenant_id       = var.tenant_id
}

resource "azurerm_app_service_plan" "appserviceplan" {
  name                = "api-appserviceplan-pro"
  location            = azurerm_resource_group.managed.location
  resource_group_name = azurerm_resource_group.managed.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "appservice" {
  name                = var.app_service_name
  location            = var.app_service_location
  resource_group_name = var.app_service_resource_group
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id

  app_settings = {
    "CLIENT_SECRET" = var.client_secret
  }
}

# Managed Resource Group
resource "azurerm_resource_group" "managed" {
  name     = var.managed_resource_group_name
  location = var.location
}

# Databricks Workspace
resource "azurerm_databricks_workspace" "main" {
  name                = var.databricks_workspace_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "premium"

  tags                = var.databricks_tags
}
