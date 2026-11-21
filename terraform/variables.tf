variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefix for all resource names"
  type        = string
  default     = "clouddevops"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "key_name" {
  description = "Existing EC2 key pair for the Jenkins server"
  type        = string
  default     = "clouddevops-key"
}

variable "admin_cidr" {
  description = "Your public IP/32 for SSH and Jenkins access"
  type        = string
  default     = "0.0.0.0/0"
}

variable "ecr_repositories" {
  type    = list(string)
  default = ["clouddevops-frontend", "clouddevops-auth", "clouddevops-roadmap"]
}
