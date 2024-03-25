module "vpc" {
  source           = "./modules/vpc"
  vpc_cidr_block   = "10.0.0.0/16"
  subnet_cidr_block = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "security_group" {
  source                     = "./modules/sg"
  vpc_id                     = module.vpc.vpc_id
  security_group_name        = "demo"
  security_group_description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_cidr_block             = module.vpc.vpc_cidr_block
}

module "instance" {
  source        = "./modules/ec2"
  ami_id        = "ami-0fb76f0c92f96a9df"  
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_ids[0]
}
