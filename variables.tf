variable "display_name" {
  type        = string
  description = "Name shown in confirmation emails"
}

variable "email_addresses" {
  type        = list(string)
  description = "Email address to send notifications to"
}

variable "protocol" {
  default     = "email"
  description = "SNS Protocol to use. email or email-json"
  type        = string
}

variable "stack_name" {
  type        = string
  description = "Unique Cloudformation stack name that wraps the SNS topic."
}

