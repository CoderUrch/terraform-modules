variable "aws_vpc" {
  description = "The name of the VPC"
  type        = string
  default     = "web-vpc"
}

variable "aws_subnet" {
  description = "webtier subnet"
  type        = string
  default     = "web-subnet"
}

variable "vpc_cidr" { # Renamed from aws_vpc to be clear it's a CIDR
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" { # Renamed from aws_subnet
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "aws_instance_type" {
  description = "Type of instance"
  type        = string
  default     = "t3.small"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

variable "aws_ami" {
  description = "AMI ID for the instance"
  type        = string
  default     = "ami-0fa91bc90632c73c9" # Example AMI ID for Amazon Linux 2 in eu-north-1
}

variable "environment" {
  description = "Environment name"
  type        = string
  default = "dev"
}