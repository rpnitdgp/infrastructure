################################ VNET Output#######################
output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
  depends_on = [azurerm_virtual_network.vnet]
}

# Output the Virtual Network Name
output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
  depends_on = [azurerm_virtual_network.vnet]
}

# Output the Virtual Network Address Space
output "vnet_address_space" {
  description = "The address space of the Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
  depends_on = [azurerm_virtual_network.vnet]
}

#####################################################################
################################ Subnet Output#######################
# Output the Subnet ID
output "subnet_id" {
  description = "The ID of the Subnet"
  value       = azurerm_subnet.subnet.id
  depends_on = [azurerm_subnet.subnet]
}

# Output the Subnet Name
output "subnet_name" {
  description = "The name of the Subnet"
  value       = azurerm_subnet.subnet.name
  depends_on = [azurerm_subnet.subnet]
}

#####################################################################


################################ NSG Output#######################
# Output the Network Security Group ID
output "nsg_id" {
  description = "The ID of the Network Security Group"
  value       = azurerm_network_security_group.nsg.id
  depends_on = [azurerm_network_security_group.nsg]
}

# Output the Network Security Group Name
output "nsg_name" {
  description = "The name of the Network Security Group"
  value       = azurerm_network_security_group.nsg.name
  depends_on = [azurerm_network_security_group.nsg]
}


#####################################################################
