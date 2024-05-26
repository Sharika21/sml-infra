resource "aws_db_instance" "sml-db" {
  allocated_storage                     = 20
  availability_zone                     = "eu-west-1b"
  backup_retention_period               = 1
  backup_target                         = "region"
  backup_window                         = "22:44-23:14"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  db_name                               = null
  db_subnet_group_name                  = "default-vpc-01f8cf2855398cc3c"
  engine                                = "mariadb"
  engine_version                        = "10.11.6"
  iam_database_authentication_enabled   = false
  identifier                            = "speech-motor-learning"
  instance_class                        = "db.t3.micro"
  iops                                  = 0
  kms_key_id                            = "arn:aws:kms:eu-west-1:296274010522:key/ed909448-8472-4818-90fd-5b56ab037066"
  license_model                         = "general-public-license"
  maintenance_window                    = "wed:05:00-wed:05:30"
  max_allocated_storage                 = 1000
  monitoring_interval                   = 0
  multi_az                              = false
  network_type                          = "IPV4"
  option_group_name                     = "default:mariadb-10-11"
  parameter_group_name                  = "default.mariadb10.11"
  port                                  = 3306
  publicly_accessible                   = false
  skip_final_snapshot                   = true
  storage_encrypted                     = true
  storage_throughput                    = 0
  storage_type                          = "gp2"
  tags = {
    Name = "sharika-assignment"
  }
  tags_all = {
    Name = "sharika-assignment"
  }
  username               = "user"
  vpc_security_group_ids = ["sg-02517bdb44bb10202"]
}

