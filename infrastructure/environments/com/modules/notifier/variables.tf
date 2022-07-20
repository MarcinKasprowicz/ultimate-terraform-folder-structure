variable "allowed_aws_account_ids" {
  type        = list(string)
  description = "The identifiers of an AWS accounts which have an access to the notifier"
}
