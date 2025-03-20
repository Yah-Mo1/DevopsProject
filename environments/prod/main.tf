module "vnet" {
  source                  = "../../modules/vnet"
  location                = var.location
  resource_group_name     = var.resource_group_name
  vnet_address_space      = var.vnet_address_space
  subnet_address_prefixes = var.subnet_address_prefixes
  prefix                  = var.prefix
}


module "vm" {
  prefix              = var.prefix
  source              = "../../modules/vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  ssh_public_key_path = var.ssh_public_key_path
  nic_id              = module.vnet.nic_id
  admin_username      = var.admin_username
  vm_size             = var.vm_size
}
