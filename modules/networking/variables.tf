variable "aws_vpc" {
    description = "The ID of the VPC"
    type        = string
}

variable "aws_subnet" {
    description = "webtier subnet"
    type = string
}

variable "aws_region" {
    type        = string
}

variable "vpc_cidr" {  # Renamed from aws_vpc to be clear it's a CIDR
  type        = string
}

variable "subnet_cidr" {  # Renamed from aws_subnet
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}