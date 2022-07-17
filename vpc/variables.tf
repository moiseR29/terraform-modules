# VPC Modules Variables

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC cidr block"
  type        = string
}

variable "vpc_availability_zones" {
  description = "VPC availability zones"
  type        = list(string)
}

variable "vpc_public_subnets" {
  description = "VPC public subnets"
  type        = list(string)
}

variable "vpc_private_subnets" {
  description = "VPC private subnets"
  type        = list(string)
}

variable "vpc_database_subnets" {
  description = "VPC database subnets"
  type        = list(string)
}

variable "vpc_create_database_subnet_group" {
  description = "VPC create database subnet group"
  type        = bool
}

variable "vpc_create_database_subnet_route_table" {
  description = "VPC create database subnet route table"
  type        = bool
}

variable "create_database_internet_gateway_route" {
  description = "VPC create internet gateway"
  type        = bool
}

variable "create_database_nat_gateway_route" {
  description = "VPC create nat gateway"
  type        = bool
}

variable "vpc_enable_nat_gateway" {
  description = "enable nat gateways for private subnets outbound communication"
  type        = bool
}

variable "vpc_single_nat_gateway" {
  description = "enable only single nat gateway in one availability zone to save costs during our demos"
  type        = bool
}

variable "enable_dns_hostnames" {
  description = "enable only dns hostanames for subnets"
  type        = bool
}

variable "enable_dns_support" {
  description = "enable dns support"
  type        = bool
}

variable "tags" {
  description = "tags for vpc"
  type        = map(string)
}

variable "namespace" {
  description = "current namespace"
  type        = string
}




