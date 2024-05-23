include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/databricks"
}

inputs = {
  resource_group_name       = "prod-resource-group"
  location                  = "eastus"
  databricks_workspace_name = "prod-databricks-workspace"
  vnet_name                 = "prod-vnet"
  subnet_name               = "prod-subnet"
}
