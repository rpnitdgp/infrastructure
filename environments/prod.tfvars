# Prod environment variables
region = "westeurope"
instance_type = "t3.large"

#azure subscription
subscription_id   = "<azure-subscription-id>"
client_id         = "<azure-client-id>"
tenant_id         = "<azure-tenant-id>"

key_vault_name            = "your-dev-key-vault-name"
key_vault_location        = "westeurope"  # Update with the appropriate location
key_vault_resource_group  = "your-dev-key-vault-resource-group"

app_service_name           = "example-app"
app_service_location       = "westeurope"
app_service_resource_group = "example-resource-group"


# Other prod-specific variables
resource_group_name = "schiphol-prod-rg"
location            = "westeurope"
databricks_workspace_name = "schiphol-databricks-workspace-prod"
managed_resource_group_name = "schiphol-managed-resource-group-prod"
vnet_name           = "schiphol-prod-vnet"
subnet_name         = "schiphol-prod-subnet"
nsg_name = "schiphol-nsg-prod"
allowed_ssh_ips = ["144.44.48.0/24"]  # IP range
subnet_ids = ["schiphol-subnet-prod-id-1", "schiphol-subnet-prod-id-2"]  # subnet IDs
terraform_principal_id = "PROD_TERRAFORM_PRINCIPAL_OBJECT_ID"
