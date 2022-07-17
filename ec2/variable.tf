variable "namespace" {
  description = "namespace for in bastion"
  type        = string
}

variable "ec2_name" {
  description = "ec2 name"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "instance_keypair" {
  description = "AWS EC2 key pair that need to be associated with EC2 Instance"
  type        = string
}

variable "instance_count" {
  description = "AWS EC2 Instance Count"
  type        = number
}

variable "ami" {
  type = string
}

variable "security_groups" {
  description = "security groups assigned"
  type        = list(string)
}

variable "subnet_ids" {
  description = "subnet assigned"
  type        = list(string)
}

variable "tags" {
  description = "tags for resource"
  type        = map(string)
}

variable "user_data" {
  description = "execute on ec2"
  type        = string
  default     = null
}


