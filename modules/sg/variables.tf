variable "security_group_name" {
  description = "Name of the security group."
  type        = string
}

variable "security_group_description" {
  description = "Description of the security group."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created."
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  type        = string
}
