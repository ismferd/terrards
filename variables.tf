provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-1"
}
variable "vpc_id" {
  default = "vpc-xxxxxxx"
}
variable "environment" {
  default = "dev"
}
variable "database_master_password" {
}
variable "private_cidr" {
  default = "x.x.x.x/x"
}
variable "private_subnets" {
  type = list(string)
  default = ["subnet-xxxxxxxx", "subnet-xxxxxxxx", "subnet-xxxxxxxx"]
}
