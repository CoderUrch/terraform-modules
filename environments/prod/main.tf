module "networking" {
  source = "../modules/networking"

  aws_vpc     = var.aws_vpc
  vpc_cidr    = var.vpc_cidr
  aws_subnet  = var.aws_subnet
  subnet_cidr = var.subnet_cidr
  aws_region  = var.aws_region
}

module "compute" {
  source = "../modules/compute"

  aws_ami           = var.aws_ami
  aws_instance_type = var.aws_instance_type

  vpc_id    = module.networking.vpc_id
  subnet_id = module.networking.subnet_id

  depends_on = [module.networking]
}