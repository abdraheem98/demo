output "vpc_id" {
  value = aws_vpc.main.id
  description = "The ID of the VPC"
}

output "subnet_ids" {
  value = aws_subnet.public.*.id
  description = "The IDs of the public subnets"
}

output "vpc_cidr_block" {
  value = aws_vpc.main.cidr_block
  description = "The CIDR block of the VPC"
}