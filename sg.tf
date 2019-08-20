resource "aws_security_group" "allow_access_to_rds" {
  name        = "allow_access_to_rds"
  description = "Allow Access to RDS inbund traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "TCP"
    cidr_blocks = ["${var.private_cidr}"]
    self = true
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["${var.private_cidr}"]
  }
}
