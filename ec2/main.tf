# https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest
module "ec2_instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "2.17.0"
  name                   = "${var.namespace}-${var.ec2_name}"
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = var.security_groups
  subnet_ids             = var.subnet_ids
  instance_count         = var.instance_count
  user_data              = var.user_data
  tags                   = var.tags
}
