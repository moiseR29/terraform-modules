variable "name_key" {
  type = string
}

variable "public_key" {
  type = string
}

variable "tags" {
  description = "tags for security groups"
  type        = map(string)
}

variable "namespace" {
  description = "current namespace"
  type        = string
}
