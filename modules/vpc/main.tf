resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "MainVPC"
  }
}

resource "aws_subnet" "public" {
  count             = length(var.subnet_cidr_block)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_block[count.index]
  availability_zone = var.availability_zone

  tags = {
    Name = "PublicSubnet-${count.index}"
  }
}
