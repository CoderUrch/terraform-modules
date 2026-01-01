resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  
  tags = {
    Name = "${var.aws_vpc}"
  }
}

resource "aws_subnet" "web_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.environment}-subnet"
  }

  # Explicit dependency - wait for VPC to be fully created
  depends_on = [aws_vpc.main]
}