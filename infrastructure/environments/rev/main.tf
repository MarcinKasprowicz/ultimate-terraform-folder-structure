module "deployment" {
  source = "../pre"

  environment = terraform.workspace
  prefix      = "${terraform.workspace}-"
}
