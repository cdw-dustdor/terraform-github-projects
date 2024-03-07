variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string

  validation {
    condition     = can(cidrhost(var.cidr_block, 2))
    error_message = "VPC CIDR block must be in the form of w.x.y.z/n"
  }
}

variable "name" {
  description = "The name of the VPC"
  type        = string
}
