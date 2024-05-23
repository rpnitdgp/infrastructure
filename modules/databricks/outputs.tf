# Output Databricks Workspace URL
output "databricks_workspace_url" {
  description = "The URL of the Databricks workspace"
  value       = azurerm_databricks_workspace.main.workspace_url
}

# Output Databricks Workspace ID
output "databricks_workspace_id" {
  description = "The ID of the Databricks workspace"
  value       = azurerm_databricks_workspace.main.id
}

# Output Managed Resource Group ID
output "managed_resource_group_id" {
  description = "The ID of the managed resource group"
  value       = azurerm_resource_group.managed.id
}
