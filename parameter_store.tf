resource "aws_ssm_parameter" "secret" {
  name        = "/${var.environment}/database/password/master"
  description = "The parameter description"
  type        = "SecureString"
  value       = "${var.database_master_password}"
  overwrite   = "true"
  tags = {
    owner = "{var.owner}"
    environment = "${var.environment}"
  }
}
