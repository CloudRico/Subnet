module "conventions" {
  source         = "github.com/CloudRico/Uplift-modules.git?ref=v1"

  application    = var.application
  enviroment     = var.enviroment
  resource_type  = "subnet"
  workload       = var.workload
  instance       = var.instance
}
resource "azurerm_subnet" "subnet"{
  address_prefixes                               = var.address_prefixes
  name                                           = module.conventions.name
  resource_group_name                            = module.azurerm_resource_group[0].name
  virtual_network_name                           = module.virtual_network.name
}