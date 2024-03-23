resource "aws_security_group" "demo" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.security_group_name
  }
}

resource "aws_security_group_inbound_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.demo.id
  cidr_blocks       = [var.vpc_cidr_block]
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
}

resource "aws_security_group_outbound_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.demo.id
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = "-1" # All protocols
}
