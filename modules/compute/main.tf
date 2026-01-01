resource "aws_instance" "web_instance" {
  ami                    = var.aws_ami
  instance_type          = var.aws_instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.web-sg.id]

  tags = {
    Name = "web_instance"
  }
}

resource "aws_security_group" "web-sg" {
  vpc_id = var.vpc_id
  name   = "web-sg"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}