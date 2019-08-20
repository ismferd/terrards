resource "aws_db_subnet_group" "rds_aurora" {
  name       = "private_rds"
  subnet_ids = "${var.private_subnets}"

  tags = {
    Name = "My DB subnet group"
  }
}
