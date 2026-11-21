variable "name" {
  type = string
}

variable "cluster_version" {
  description = "Kubernetes version (check currently supported EKS versions)"
  type        = string
  default     = "1.31"
}

variable "private_subnet_ids" {
  description = "Private subnets (one per AZ); one worker node is placed in each"
  type        = list(string)
}

variable "node_instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}

variable "tags" {
  type    = map(string)
  default = {}
}
