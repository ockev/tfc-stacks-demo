locals {
  location = "eastus"
  project = "tfstack-testing"
}

identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "dev" {
    inputs = {
        identity_token = identity_token.azurerm.jwt
        client_id = "4842def2-c850-4aa4-96fe-1246c62e8d34"
        subscription_id = "00d4c5f4-b702-4504-92a5-de3f5fdb08e5"
        tenant_id = "0212b37b-2d80-40e7-9c42-aa978d1e385b"

        location = local.location
        prefix = "tfstack"
        suffix = "644547"
        cidr_range = "10.0.0.0/16"
        subnets = {
            subnet1 = ["10.0.0.0/24"]
        }
        tags = {
            environment = "dev"
            project = local.project
        }
    }
}
