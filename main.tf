module "aws_vpc" {
  source = "demo/modules/vpc"
}

module "aws_security_group" {
  source                     = "demo/modules/sg"
  vpc_id                     = module.vpc.main.id
  security_group_name        = "demo"
  security_group_description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_cidr_block             = module.vpc.main.cidr_block
}

module "aws_instance" {
  source        = "demo/modules/ec2"
  ami_id        = "ami-0fb76f0c92f96a9df"  
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnet_ids[0]  
}
