rgs ={
    rg1={
    name = "rg_mk"
    location = "japaneast"
}
rg={
    name = "rg_mk"
    location = "japaneast"
}
}
vnets ={
    vnet1={
      name ="mk_vnet"
    rg_name = "rg_mk"
    location ="japaneast"
    address_space = ["10.0.0.0/16"]
}
}
subnets ={
    subnet1={
    name ="mksubnet1"
    resource_group_name = "rg_mk"
    virtual_network_name = "mk_vnet"
    address_prefixes = ["10.0.1.0/24"]
}
 subnet2={
    name ="AzureBastionSubnet"
    resource_group_name = "rg_mk"
    virtual_network_name = "mk_vnet"
    address_prefixes = ["10.0.2.0/24"]
}
}
pips ={
    pip1={
    name              ="mk_pip"
  resource_group_name = "rg_mk"
  location            = "japaneast"
  allocation_method   = "Static"

}
   pip2={
    name                ="mk_pip2"
  resource_group_name = "rg_mk"
  location            = "japaneast"
  allocation_method   = "Static"

}
}

nics ={
    nic1={
    name                = "mk_nic1"
  location            = "japaneast"
  resource_group_name = "rg_mk"
  subnet_name         = "mksubnet1"
  virtual_network_name = "mk_vnet"
  public_ip_name     = "mk_pip"
  
}
}

vms ={
    vm1={
    name                = "manas-vm"
  resource_group_name = "rg_mk"
  location            = "japaneast"
  size                = "Standard_D4_v5"
  admin_username      = "devops"
  admin_password      = "M@devops2026"
}
}
bas ={
    bas1={
subnet_name ="AzureBastionSubnet"
virtual_network_name ="mk_vnet"
resource_group_name ="rg_mk"
public_ip_name ="mk_pip2"
bastion_name="bastion1"
location ="japaneast"
    }
}
