resource "aws_security_group_rule" "instance-ssh" {
  cidr_blocks = ["0.0.0.0/0"]

  from_port = 22

  protocol = "TCP"

  security_group_id = aws_security_group.test-sg.id

  to_port = 22

  type = "ingress"
}

resource "aws_security_group_rule" "outbound-traffic" {
  cidr_blocks = ["0.0.0.0/0"]

  from_port = 0

  protocol = "-1"

  security_group_id = aws_security_group.test-sg.id

  to_port = 0

  type = "egress"
}

resource "aws_security_group_rule" "test-cluster-traffic" {
  cidr_blocks = ["10.0.0.0/16"]

  from_port = 0

  protocol = "-1"

  security_group_id = aws_security_group.test-sg.id

  to_port = 0

  type = "ingress"
}