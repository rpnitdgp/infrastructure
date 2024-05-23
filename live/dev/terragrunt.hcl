# infrastructure/live/dev/terragrunt.hcl
terraform {
  extra_arguments "common_vars" {
    commands = ["apply", "plan"]

    arguments = [
      "-var-file=../../environments/dev.tfvars"
    ]
  }

  source = "../../modules"
}