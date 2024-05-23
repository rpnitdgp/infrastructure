output "key_vault_id" {
  description = "The ID of the created Azure Key Vault."
  value       = azurerm_key_vault.key_vault.id
}

output "key_vault_uri" {
  description = "The URI of the created Azure Key Vault."
  value       = azurerm_key_vault.key_vault.vault_uri
}

output "key_vault_name" {
  description = "The name of the created Azure Key Vault."
  value       = azurerm_key_vault.key_vault.name
}