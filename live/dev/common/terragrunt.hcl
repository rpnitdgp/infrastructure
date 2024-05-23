terraform {
  extra_arguments "common_vars" {
    commands = ["apply", "plan"]

    arguments = [
      "-var-file=../../environments/dev.tfvars"
    ]
  }
}

include {
  path = find_in_parent_folders()
}
