module "resourcegroup" {
  source  = "app.terraform.io/andygio/resourcegroup/azure"
  version = "1.0.3"

  app_env    = var.app_env
  app_prefix = var.app_prefix
  location   = var.location
  sub_prefix = var.sub_prefix

  tags = var.tags
}

module "appserviceplan" {
  source  = "app.terraform.io/andygio/appserviceplan/azure"
  version = "1.0.0"

  resource_group_name = module.resourcegroup.rg_name

  app_env    = var.app_env
  app_prefix = var.app_prefix
  location   = var.location
  sub_prefix = var.sub_prefix
  asp_sku    = var.asp_sku

  tags = var.tags
}

module "linuxwebapp" {
  source  = "app.terraform.io/andygio/linuxwebapp/azure"
  version = "1.0.6"

  resource_group_name = module.resourcegroup.rg_name
  asp_plan_id         = module.appserviceplan.asp_id

  app_env           = var.app_env
  app_prefix        = var.app_prefix
  location          = var.location
  sub_prefix        = var.sub_prefix
  application_stack = var.application_stack

  tags = var.tags
}

