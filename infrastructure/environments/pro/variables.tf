variable "aws_account_id" {
  type = string
  default     = "<test_account_id>"
  description = "The identifier of an AWS account"
}

variable "aws_default_region" {
  type        = string
  default     = "eu-north-1"
  description = "Default AWS region"
}

variable "environment" {
  type        = string
  default     = "pro"
  description = "The name of an environment"
}
