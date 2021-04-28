#main file
provider "azurerm" {
  features {}

  subscription_id = "25a98a18-5e94-4b21-9d17-e8cf45bfd81f"
  client_id       = "562821fd-0916-4535-ac31-4025760274ee"
  client_secret   = "fTNwRHs0~sYHk4hsepV6L.Pmf.NHFyaG-S"
  tenant_id       = "558506eb-9459-4ef3-b920-ad55c555e729"
}

terraform {
  required_providers{
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.56.0"
    }
  }
   backend "remote" {
    organization = "zm-intern06"

    workspaces {
      name = "Jenkins-Test"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "test_jenkins"
  location = "westeurope"
}





