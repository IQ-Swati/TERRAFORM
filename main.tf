// Call the modules and existing resources in main.tf

# provider "azurerm" {
#   subscription_id = var.subscription_id
#   tenant_id       = var.tenant_id
#   features {}
# }


# # Call the VNet module
# module "VNet" {
#   source              = "./Module/VNet"
#   resource_group_name = var.resource_group_name
#   vnet_name           = var.vnet_name
#   public_subnet_name  = var.public_subnet_name
#   private_subnet_name = var.private_subnet_name
# }


# # Call the VM module
# module "VM" {
#   source              = "./Module/VM"
#   resource_group_name = var.resource_group_name
#   vnet_name           = var.vnet_name
#   # public_subnet_name  = Module.VNet.public_subnet_name
#   vm_name             = var.vm_name
#   admin_username      = var.admin_username
#   # admin_password      = var.admin_password
#   # public_ip_id        = Module.VNet.public_ip_id
#   # nsg_id              = Module.VNet.nsg_id
#   cloud_init_file     = Module.VNet.cloud_init_file
# }




module "VNet" {
  source              = "./Module/VNet"
  vnet_name           = var.vnet_name
  # location            = var.location
  resource_group_name = var.resource_group_name
  # address_space       = ["10.0.0.0/16"]
  # subnet_name         = "my-subnet"
  # subnet_address_prefixes = ["10.0.1.0/24"]
}

# module "VM" {
#   source              = "./Module/VM"
#   vm_name             = var.vm_name
#   resource_group_name = var.resource_group_name
#   # location            = var.location
#   # vm_size             = "Standard_B2s"
#   admin_username      = "azureuser"
#   ssh_public_key_path = var.ssh_public_key_path
#   public_subnet_id           = Module.VNet.public_subnet_id
# }