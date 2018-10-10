resource "aws_security_group" "demosg" {
  name = "${var.prefix}"
  tags {
        Name = "${var.prefix}"
  }
  description = "${var.prefix} SG"
  egress {
    from_port   = 0
    to_port     = 65535 # All outbound traffic
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
   }
   ingress {
     from_port   = 443
     to_port     = 443 # All outbound traffic
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
    }
}
