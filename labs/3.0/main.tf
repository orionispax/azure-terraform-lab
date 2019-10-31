provider "azurerm" {
  version = "1.36"
}

module "functionappmodule" {
  source = "./function"
  resource_group_name = "${azurerm_resource_group.lab.name}"
  resource_group_location = "${azurerm_resource_group.lab.location}"
}


resource "azurerm_resource_group" "lab" {
  name     = "lab-3-0"
  location = "eastus"
}

