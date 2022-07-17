# https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest
module "rds" {
  source                 = "terraform-aws-modules/rds/aws"
  version                = "3.0.0"
  identifier             = "${var.db_instance_identifier}-${var.namespace}"
  name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  port                   = var.db_port
  multi_az               = var.db_az
  subnet_ids             = var.db_subnets
  vpc_security_group_ids = var.db_security_groups
  tags                   = var.tags
  engine                 = "postgres"
  engine_version         = "11.13"
  family                 = "postgres11"
  major_engine_version   = "11"
  instance_class         = var.db_instance_class

  allocated_storage     = 20
  max_allocated_storage = 100
  storage_encrypted     = false

  maintenance_window              = "Mon:00:00-Mon:03:00"
  backup_window                   = "03:00-06:00"
  enabled_cloudwatch_logs_exports = ["postgresql", "upgrade"]

  backup_retention_period = 0
  skip_final_snapshot     = true
  deletion_protection     = false

  performance_insights_enabled          = true
  performance_insights_retention_period = 7
  #create_monitoring_role                = true
  #monitoring_interval                   = 60
  #monitoring_role_name                  = "example-monitoring-role-name"
  #monitoring_role_description           = "Description for monitoring role"

  parameters = [
    {
      name  = "autovacuum"
      value = 1
    },
    {
      name  = "client_encoding"
      value = "utf8"
    }
  ]

  db_option_group_tags = {
    "Sensitive" = "low"
  }
  db_parameter_group_tags = {
    "Sensitive" = "low"
  }
  db_subnet_group_tags = {
    "Sensitive" = "high"
  }
}
