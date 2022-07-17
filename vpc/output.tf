output "vpc_id" {
  description = "the id of the vpc"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "the cidr block of the vpc"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "list of ids of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "list of ids of public subnets"
  value       = module.vpc.public_subnets
}

output "database_subnets" {
  description = "list of ids of public subnets"
  value       = module.vpc.database_subnets
}

output "nat_public_ips" {
  description = "list of public elastic ips created for aws nat gateway"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "a list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}
