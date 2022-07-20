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
  default     = "pre"
  description = "The name of an environment"
}

variable "prefix" {
  type        = string
  default     = ""
  description = "The string added at the beggining of each resource"
}