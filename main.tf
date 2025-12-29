provider "azurerm" {
    features {}
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
    client_id = var.client_id
    client_secret = var.client_secret
    }
resource "azurerm_resource_group" "example" {
    name     = var.resource_group_name
    location = var.location
    }
resource "azurerm_storage_account" "example" {
    name                     = var.storage_account_name
    resource_group_name      = azurerm_resource_group.example.name
    location                 = azurerm_resource_group.example.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
    }
resource "azurerm_storage_container" "example" {
    name                  = var.container_name
    storage_account_id  = azurerm_storage_account.example.id
    container_access_type = "private"
    }   