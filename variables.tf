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
}

variable "subnet_cidr" { # Renamed from aws_subnet
  description = "CIDR block for the subnet"
  type        = string
}

variable "aws_instance_type" {
  description = "Type of instance"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "aws_ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}