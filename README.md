Infrastructure as Code with Terragrunt
This project utilizes Terragrunt, a thin wrapper for Terraform, to manage infrastructure resources on Microsoft Azure. It provisions Azure Databricks, Key Vault, and network components like VNet, subnet, and NSG across different environments.

Project Structure
The project is structured as follows:

/environments: Contains environment-specific configurations managed by Terragrunt.
    dev.tfvars: Configuration file for the development environment.
    prod.tfvars: Configuration file for the production environment.
/live: Contains the live environment configurations.
    /dev: Configuration files for the development environment.
        /databricks: Terragrunt configuration for provisioning Azure Databricks.
            terragrunt.hcl: Terragrunt configuration file.
        /keyvault: Terragrunt configuration for provisioning Azure Key Vault.
            terragrunt.hcl: Terragrunt configuration file.
        /network: Terragrunt configuration for provisioning networking components.
            terragrunt.hcl: Terragrunt configuration file.
    /prod: Configuration files for the production environment.
        /databricks: Terragrunt configuration for provisioning Azure Databricks.
            terragrunt.hcl: Terragrunt configuration file.
        /keyvault: Terragrunt configuration for provisioning Azure Key Vault.
            terragrunt.hcl: Terragrunt configuration file.
        /network: Terragrunt configuration for provisioning networking components.
            terragrunt.hcl: Terragrunt configuration file.
/modules: Reusable Terraform modules for provisioning different types of resources.
    /databricks: Terraform module for provisioning Azure Databricks.
        main.tf: Main configuration file.
        outputs.tf: Output variables configuration file.
        variables.tf: Input variables configuration file.
    /keyvault: Terraform module for provisioning Azure Key Vault.
        main.tf: Main configuration file.
        outputs.tf: Output variables configuration file.
        variables.tf: Input variables configuration file.
    /network: Terraform module for provisioning network components.
        main.tf: Main configuration file.
        outputs.tf: Output variables configuration file.
        variables.tf: Input variables configuration file.

Usage
Clone the Repository: Clone this repository to your local machine.

```console
git clone <repository_url>
```

Set Azure Credentials: Log in to your Azure account using Azure CLI.

```console
az login
```


Initialize Terragrunt: Navigate to the live environment directory (/live/dev or /live/prod) and initialize Terragrunt.

```console
cd live/dev
terragrunt init
```


Modify Configuration: Update the Terragrunt configuration files (terragrunt.hcl) with your desired settings and variables.

Plan Deployment: Generate an execution plan to preview the changes that Terragrunt will make.

```console
terragrunt plan
```


Apply Changes: Apply the Terragrunt configuration to create or update the infrastructure resources.

```console
terragrunt apply
```


Destroy Resources: When done, you can destroy the provisioned resources to clean up.

```console
terragrunt destroy
```
