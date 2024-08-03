terraform {
  backend "azurerm" {
    resource_group_name  = "<your_resource_group_name>"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "<your_storage_account_name>"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "<your_storage-container_name>"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "<your_terraform_tfstate_file_name>"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
