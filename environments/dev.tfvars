# Dev environment variables
region = "westeurope"
instance_type = "t2.micro"

#azure subscription
subscription_id   = "40fa4de9-4f7d-4515-b31d-928ac25c1560"
client_id         = "48393189-e0ef-41c9-850b-36f29122709a"
tenant_id         = "d5136226-3b62-44f0-97cd-76bb92644414"

key_vault_name            = "schiphol-key-vault"
key_vault_location        = "westeurope" 
key_vault_resource_group  = "testSubscription"

app_service_name           = "schiphol-app"
app_service_location       = "westeurope"
app_service_resource_group = "testSubscription"


# Other dev-specific variables
resource_group_name = "testSubscription"
location            = "westeurope"
databricks_workspace_name = "schiphol-databricks-workspace-dev"
managed_resource_group_name = "schiphol-managed-resource-group-dev"
vnet_name           = "schipholdevvnet"
vnet_address_space = ["10.0.0.0/16"]
subnet_name         = "schiphol-dev-subnet"
subnet_address_prefixes = ["10.0.1.0/28"]
nsg_name = "schiphol-nsg-dev"
allowed_ssh_ips = ["10.0.1.0/28"]  # IP range
source_address_prefix = "10.0.1.0/28"
subnet_ids = ["schiphol-subnet-dev-id-1", "schiphol-subnet-dev-id-2"]  # subnet IDs
terraform_principal_id = "96b8d5dd-ee48-4079-af6a-ca649f8c18dd"
client_secret = "GV18Q~UFCW7jKuDHHpJdYfktNpkML~rQUxoGYcT-"
role_definition_name = "Reader"
api_service_plan_name = "appserviceplan"
network_tags = {
    "Product"     = "schipholapp",
    "Application" = "networking",
    "Owner"       = "ravi"
}
keyvault_tags = {
    "Product"     = "schipholapp",
    "Application" = "keyvault",
    "Owner"       = "ravi"
}
databricks_tags = {
    "Product"     = "schipholapp",
    "Application" = "databricks",
    "Owner"       = "ravi"
}
my_ip = ["77.249.135.0/24"]