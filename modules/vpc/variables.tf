variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  type        = string
  default     = "ap-southeast-2a"
}