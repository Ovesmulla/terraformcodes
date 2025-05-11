terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.28.0"
    }
  }
}

provider "azurerm" {
  featurs {}
  subscripation_id = "d55bec86-ed53-491a-92d6-dee26920678f"
}


resource "azurerm_resource_group" "example" {
  name     = "example-resource"
  location = "japan west"
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}