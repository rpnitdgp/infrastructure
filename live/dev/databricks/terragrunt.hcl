terraform {
  source = "../../../modules/databricks"

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
}

dependency "keyvault" {
  config_path = "../keyvault"
}
