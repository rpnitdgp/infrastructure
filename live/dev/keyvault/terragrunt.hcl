terraform {
  source = "../../../modules/keyvault"

   extra_arguments "common_vars" {
     commands = ["apply", "plan"]

     arguments = [
       "-var-file=${get_terragrunt_dir()}/../../../environments/dev.tfvars"
     ]
   }
}

include {
  path = find_in_parent_folders()
}

dependency "network" {
  config_path = "../network"
  mock_outputs = {
    vnet_id = "mock-vnet-id"
    subnet_id = "mock-subnet-id"
    nsg_id = "mock-nsg-id"
  }
}