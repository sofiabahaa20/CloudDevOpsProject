variable "name" {
  description = "Prefix for resource names"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
}

variable "azs" {
  description = "Availability Zones (one subnet of each type per AZ)"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDRs of public subnets (same length as azs)"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDRs of private subnets (same length as azs)"
  type        = list(string)
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}
