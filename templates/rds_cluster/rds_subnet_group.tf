resource "aws_db_subnet_group" "rds_aurora" {
  name       = "private_rds"
  subnet_ids = "${var.private_subnets}"
  tags = {
    owner = "{var.owner}"
    environemnt = "{var.environment}"
    purpose = "private"
    engine = "aurora"
  }
}
