module "app" {
  source = "../../modules/app"

  environment = var.environment
  prefix      = var.prefix
}

module "queue" {
  source = "../../modules/queue"

  prefix = var.prefix
}

module "db" {
  source = "../../modules/db"

  prefix = var.prefix
}
