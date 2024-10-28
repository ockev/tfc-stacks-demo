terraform {
  required_providers {

    azuread = {
      source  = "hashicorp/azuread"
      version = "~>3.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}