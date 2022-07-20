module "notifier" {
  source = "./modules/notifier"

  allowed_aws_account_ids = var.allowed_aws_account_ids
}
