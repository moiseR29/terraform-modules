variable "db_name" {
  description = "AWS RDS Database Name"
  type        = string
}

variable "db_instance_identifier" {
  description = "AWS RDS Database Instance Identifier"
  type        = string
}

variable "db_username" {
  description = "AWS RDS Database Administrator Username"
  type        = string
}

variable "db_password" {
  description = "AWS RDS Database Administrator Password"
  type        = string
  sensitive   = true
}

variable "db_port" {
  description = "AWS RDS Database port"
  type        = string
}

variable "db_az" {
  description = "allow az"
  type        = bool
}

variable "db_subnets" {
  description = "AWS RDS db subnets"
  type        = list(string)
}

variable "db_security_groups" {
  description = "AWS RDS db security groups"
  type        = list(string)
}

variable "db_instance_class" {
  description = "AWS RDS instance class"
  type        = string
}

variable "tags" {
  description = "tags for security groups"
  type        = map(string)
}

variable "namespace" {
  description = "current namespace"
  type        = string
}

