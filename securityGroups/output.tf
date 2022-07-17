output "sg_public_id" {
  value = aws_security_group.allow_ssh_public.id
}

output "sg_private_id" {
  value = aws_security_group.allow_ssh_private.id
}

output "sg_database_id" {
  value = aws_security_group.allow_database_port.id
}
