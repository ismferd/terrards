output "cluster_endpoint"{
  value = aws_rds_cluster.aurora.endpoint
}
output "instance_db_endpoint"{
  value = aws_rds_cluster_instance.cluster_instances.endpoint
}
output "db_name"{
  value = aws_rds_cluster.aurora.database_name
}
output "instance_type"{
  value = aws_rds_cluster_instance.cluster_instances.instance_class
}
output "engine"{
  value = aws_rds_cluster_instance.cluster_instances.engine
}
output "engine_version"{
  value = aws_rds_cluster_instance.cluster_instances.engine_version
}

