provider "azurerm" {
  version = "1.36"
}

provider "random" {
  version = "2.2.1"
}

resource "azurerm_resource_group" "lab" {
  name = "lab-1-0"
  location = "eastus"
}

resource "random_id" "lab" {
    keepers = {
        resource_group = "${azurerm_resource_group.lab.name}"
    }

    byte_length = 2
}

