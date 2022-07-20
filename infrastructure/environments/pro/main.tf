module "app" {
  source = "../../modules/app"

  autoscaling_max = 10
  environment     = var.environment
  instance_type   = "t4g.medium"
}

module "queue" {
  source = "../../modules/queue"
}
