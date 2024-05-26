resource "aws_instance" "sml-ec2" {
  ami                                  = "ami-0ac67a26390dc374d"
  associate_public_ip_address          = true
  availability_zone                    = "eu-west-1b"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "sharika-assignment"
  monitoring                           = false
  secondary_private_ips                = []
  security_groups                      = []
  source_dest_check                    = true
  subnet_id                            = "subnet-0aeedf6fc5164356a"
  tags = {
    Name = "speech-motor-learning"
  }
  tags_all = {
    Name = "speech-motor-learning"
  }
  tenancy                     = "default"
  vpc_security_group_ids      = [aws_security_group.allow_tls_sml_ec2.id]
}

