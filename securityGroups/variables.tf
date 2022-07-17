variable "namespace" {
  description = "current namespace"
  type        = string
}

variable "vpc_id" {
  description = "vpc_id to match security groups"
  type        = string
}

variable "tags" {
  description = "tags for security groups"
  type        = map(string)
}

variable "vpc_cidr_block" {
  description = "VPC cidr block for private security group"
  type        = string
}
