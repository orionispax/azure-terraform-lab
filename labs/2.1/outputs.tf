output "name" {
    value = "${azurerm_function_app.lab.default_hostname}"
}