terraform {
  backend "s3" {
    dynamodb_table = "terraform-locks"
    bucket         = "terraform-tfstate-payment"
    encrypt        = true
    key            = "infrastructure/environments/pro/ultimate-terraform-folder-strucutre/db.tfstate"
    region         = "eu-north-1"
    role_arn       = "arn:aws:iam::<bastion_account_id>:role/TerraformState"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5.0"
    }
  }
}

provider "aws" {
  allowed_account_ids = [var.aws_account_id]
  region              = var.aws_default_region

  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account_id}:role/AssumableAdmin"
  }

  default_tags {
    tags = {
      terraform  = true
      repository = "ultimate-terraform-folder-strucutre"
    }
  }
}
