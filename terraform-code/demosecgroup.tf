resource "aws_security_group" "demo-allow-all-sg" {
  name        = "${var.prefix}-allow-all"
  description = "Allow all demo inbound traffic SG"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.prefix}-sg"
  }
}

