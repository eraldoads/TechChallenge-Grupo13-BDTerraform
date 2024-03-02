resource "aws_db_instance" "rds" {
  db_name                 = var.dbName
  engine                  = var.engineRds
  engine_version          = var.engineRdsVersion
  identifier              = "rds-${var.projectName}"
  username                = var.rdsUser
  password                = var.rdsPass
  instance_class          = var.instanceClass
  storage_type            = var.storageType
  allocated_storage       = var.minStorage
  max_allocated_storage   = var.maxStorage
  multi_az                = false
  vpc_security_group_ids  = ["${aws_security_group.sg-rds.id}"]
  db_subnet_group_name    = aws_db_subnet_group.subnet-rds.id
  apply_immediately       = true
  skip_final_snapshot     = true
  publicly_accessible     = true
  deletion_protection     = false
  backup_retention_period = 0
  # backup_window                = "00:00-00:30"
  # copy_tags_to_snapshot        = true
  delete_automated_backups = true
}