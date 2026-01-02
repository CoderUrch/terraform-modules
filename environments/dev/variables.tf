variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "aws_instance_type" {
  description = "Instance type"
  type        = string
  default     = "t3.micro"
}

variable "aws_ami" {
  description = "AMI ID"
  type        = string
}

variable "environment" {
  type = string
  default = "dev"
}

variable "aws_vpc" {
  type = string
  default = "dev-vpc"
}

variable "aws_subnet" {
  type = string
  default = "dev-subnet"
}
