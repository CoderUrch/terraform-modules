variable "aws_instance_type" {
    description = "Type of instance"
    type = string
}

variable "aws_ami" {
    description = "AMI ID for the instance"
    type        = string
}

# NEW - Add these variables
variable "vpc_id" {
  description = "VPC ID from networking module"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID from networking module"
  type        = string
}