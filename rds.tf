resource "aws_rds_cluster_instance" "cluster_instances" {
  cluster_identifier = "${aws_rds_cluster.aurora.id}"
  instance_class     = "db.t2.small"
  engine_version     = "5.7.mysql_aurora.2.03.2" 
  engine             = "aurora-mysql"
  auto_minor_version_upgrade = "true"
}

resource "aws_rds_cluster" "aurora" {
  availability_zones         = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  database_name              = "mydb_aurora"
  master_username            = "foo_aurora"
  master_password            = "${data.aws_ssm_parameter.secret.value}"
  engine                     = "aurora-mysql"
  engine_version             = "5.7.mysql_aurora.2.03.2" 
  deletion_protection        = "true"
  vpc_security_group_ids     = ["${aws_security_group.allow_access_to_rds.id}"]
  depends_on                 = [aws_security_group.allow_access_to_rds]
  db_subnet_group_name       = "${aws_db_subnet_group.rds_aurora.name}" 
  final_snapshot_identifier  = "finalshot"
}

data "aws_ssm_parameter" "secret" {
  name        = "/${var.environment}/database/password/master"
  depends_on = [aws_ssm_parameter.secret]
}
