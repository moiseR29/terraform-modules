resource "aws_key_pair" "key_pair" {
  key_name   = "${var.name_key}-${var.namespace}"
  public_key = var.public_key
  tags       = var.tags
}
