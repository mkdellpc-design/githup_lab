module "rg" {
    source ="../child_module/azurerm_rg"
    rgs = var.rgs
  }

  module "vnet" {
    depends_on = [ module.rg ]
    source ="../child_module/azurerm_vnet"
    vnets= var.vnets
    
  }
  module "subnet" {
    depends_on = [ module.vnet ]
    source="../child_module/azurerm_subnet"
    subnets =var.subnets
    
  }
  module "pip" {
    depends_on = [ module.rg ]
    source = "../child_module/azurerm_public_ip"
    pips =var.pips
  }

  module "nic" {
    depends_on = [ module.rg,module.vnet,module.pip,module.subnet ]
    source = "../child_module/azurerm_nic"
    nics=var.nics
  }

  module "vm" {
    depends_on = [ module.rg,module.vnet,module.subnet,module.pip,module.nic ]
    source = "../child_module/azurerm_vm"
    vms =var.vms
  }

  module "bastion" {
    depends_on = [ module.subnet ]
    source="../child_module/azurerm_bastion"
    bas=var.bas
  }