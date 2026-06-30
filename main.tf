terraform {
    required_version = ">= 1.11.0"

    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.43.0"
        }
    }
}

provider "azurerm" {
    features {}
}

data "azurerm_client_config" "current" {}

output "subscription_id" {
    value = data.azurerm_client_config.current.subscription_id
}