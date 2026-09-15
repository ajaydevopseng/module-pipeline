
module "rg" {
  source = "../../modules/RG"
  rg     = var.rg
}
module "storage" {
  depends_on = [module.rg]
  source     = "../../modules/Storage"
  storage    = var.storage
}
module "container" {
  depends_on = [module.storage]

  source    = "../../modules/Container"
  container = var.container
}
module "vnet" {
  depends_on = [module.rg]

  source = "../../modules/Vnet"
  vnet   = var.vnet
}
module "subnet" {
  depends_on = [module.vnet]

  source = "../../modules/Subnet"
  subnet = var.subnet
}
module "NIC" {
  depends_on = [module.subnet]

  source = "../../modules/NIC"
  NIC    = var.NIC
}
module "vm" {
  depends_on = [module.NIC]

  source = "../../modules/Vm"
  vm     = var.vm
}

