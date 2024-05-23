terraform {
  source = "../../../modules/network"

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