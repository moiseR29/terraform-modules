output "ec2_instance_id" {
  description = "List of IDs of instance "
  value       = module.ec2_instance.id
}

output "ec2_instance_public_id" {
  description = "List of public IP assigned to the instances"
  value       = module.ec2_instance.public_ip
}

output "ec2_instance_public_dns" {
  description = "List of public DNS assigned to the instances"
  value       = module.ec2_instance.public_dns
}

output "ec2_instance_private_id" {
  description = "List of private IP assigned to the instances"
  value       = module.ec2_instance.private_ip
}

output "ec2_instance_private_dns" {
  description = "List of private DNS assigned to the instances"
  value       = module.ec2_instance.private_dns
}
