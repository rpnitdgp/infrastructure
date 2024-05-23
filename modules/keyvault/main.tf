provider "azurerm" {
  features {}
  subscription_id = "40fa4de9-4f7d-4515-b31d-928ac25c1560"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  skip_provider_registration = true
}

resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault_name
  location                    = var.key_vault_location
  enabled_for_disk_encryption = true
  resource_group_name         = var.key_vault_resource_group
  tenant_id                   = var.tenant_id

  sku_name = "standard"

  network_acls {
    bypass         = "AzureServices"
    default_action = "Deny"
    ip_rules       = var.my_ip
  }

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.terraform_principal_id

     key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Decrypt",
      "Encrypt",
      "Sign",
      "Verify",
      "WrapKey",
      "UnwrapKey"
    ]

    secret_permissions = [
      "Get", "List", "Set", "Delete", "Recover", "Backup", "Restore", "Purge"
    ]

    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

  tags = var.keyvault_tags
}