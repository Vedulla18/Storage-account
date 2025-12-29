variable "subscription_id" {
  description = "The subscription ID for the Azure account."
  type        = string
  }
variable "tenant_id" {
  description = "The tenant ID for the Azure account."
  type        = string
  }
variable "client_id" {
  description = "The client ID for the Azure account."
  type        = string
  }
variable "client_secret" {
  description = "The client secret for the Azure account."
  type        = string
  }
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default = "tf-sa-rg"
  }
variable "location" {
    description = "The Azure region to deploy resources."
    type        = string
    default     = "East US"
    }
variable "storage_account_name" {
    description = "The name of the storage account."
    type        = string
    default     = "tfstatestorageacctdemo"
    }
variable "container_name" {
    description = "The name of the storage container."
    type        = string
    default     = "tfstatecontainer"
    }