terraform {
    backend "azurerm" {
    resource_group_name  = "tf-sa-rg"
    storage_account_name = "tfstatestorageacctdemo"
    container_name       = "tfstatecontainer"
    key                  = "terraform.tfstate"
    }
}