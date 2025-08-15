terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
}

provider "azurerm" {
  features {}
   subscription_id = "5c8c34db-1cec-41ed-9c43-cb5372d74ff4"

}

terraform {
  backend "azurerm" {
    resource_group_name  = "ritkargp"
    storage_account_name = "ritkasap"
    container_name       = "ritkascp"
    key                  = "main.tfstate"
  }
}