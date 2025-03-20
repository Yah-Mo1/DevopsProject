variable "prefix" {
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                = "${var.prefix}-subnet"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_public_ip" "ip" {
  name                = "${var.prefix}-ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "nic" {
  name                = "${var.prefix}-nic"
 location            = azurerm_resource_group.rg.location
 resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ip.id

  }
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.prefix}-nsg"
   location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

}
# Inbound SSH Rule (Port 22)
resource "azurerm_network_security_rule" "ssh_rule" {
  resource_group_name = azurerm_resource_group.rg.name
  name                        = "app-Allow-SSH"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  network_security_group_name = azurerm_network_security_group.nsg.name
}


# Inbound HTTP Rule (Port 80)
resource "azurerm_network_security_rule" "http_rule" {
  resource_group_name = azurerm_resource_group.rg.name
  name                        = "Allow-HTTP"
  priority                    = 102
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  network_security_group_name = azurerm_network_security_group.nsg.name
}

resource "azurerm_network_interface_security_group_association" "nsg-association" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

