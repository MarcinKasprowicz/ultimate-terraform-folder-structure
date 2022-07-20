variable "aws_account_id" {
  type = string
  default     = "<production_account_id>"
  description = "The identifier of an AWS account"
}

variable "aws_default_region" {
  type        = string
  default     = "eu-north-1"
  description = "Default AWS region"
}

variable "allowed_aws_account_ids" {
  type        = list(string)
  default     = ["<test_account_id>", "<production_account_id>"]
  description = "The identifiers of an AWS accounts which have an access to the notifier"
}
