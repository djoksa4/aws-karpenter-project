################ GENERAL ################
variable "project_name" {
  type        = string
  description = "Prefix for all resources in the project"

  validation {
    condition     = length(trimspace(var.project_name)) > 0
    error_message = "project_name variable must not be empty."
  }
}

variable "region" {
  type        = string
  description = "AWS region for resources"

  validation {
    condition     = length(trimspace(var.region)) > 0
    error_message = "region variable must not be empty."
  }
}