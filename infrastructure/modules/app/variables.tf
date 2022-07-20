variable "environment" {
  type        = string
  description = "The name of the environemnts"
}

variable "prefix" {
  type        = string
  default     = ""
  description = "The string added at the beggining of each resource"
}

variable "instance_type" {
  type        = string
  default     = "t4g.micro"
  description = "The instance type that's used to run your application"
}

variable "autoscaling_min" {
  type        = number
  default     = 1
  description = "The minimum number of instances"

}

variable "autoscaling_max" {
  type        = number
  default     = 1
  description = "The maximum number of instances"
}
