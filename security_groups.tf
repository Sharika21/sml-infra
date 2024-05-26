// EC2
resource "aws_security_group" "allow_tls_sml_ec2" {
  name        = "allow_tls_sml_ec2"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-01f8cf2855398cc3c"

  tags = {
    Name = "sharika-assignment"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4_sml_ec2_ip" {
  security_group_id = aws_security_group.allow_tls_sml_ec2.id
  cidr_ipv4         = "105.184.124.9/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4_sml_ec2" {
  security_group_id = aws_security_group.allow_tls_sml_ec2.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 8443
  ip_protocol       = "tcp"
  to_port           = 8443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4_sml_ec2" {
  security_group_id = aws_security_group.allow_tls_sml_ec2.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

// DB
resource "aws_security_group" "allow_tls_sml_database" {
  name        = "allow_tls_sml_database"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-01f8cf2855398cc3c"

  tags = {
    Name = "sharika-assignment"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4_sml_database" {
  security_group_id = aws_security_group.allow_tls_sml_database.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 3306
  ip_protocol       = "tcp"
  to_port           = 3306
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4_sml_database" {
  security_group_id = aws_security_group.allow_tls_sml_database.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
