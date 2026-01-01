module "networking" {
  source = "./modules/networking"

  environment = var.environment
  aws_vpc     = "${var.environment}-vpc"
  vpc_cidr    = var.vpc_cidr
  aws_subnet  = "${var.environment}-subnet"
  subnet_cidr = var.subnet_cidr
  aws_region  = var.aws_region

}

module "compute" {
  source = "./modules/compute"

  environment       = var.environment
  aws_ami           = var.aws_ami
  aws_instance_type = var.aws_instance_type

  # Pass networking module outputs to compute module
  vpc_id    = module.networking.vpc_id
  subnet_id = module.networking.subnet_id

  # Explicitly depend on networking module
  depends_on = [module.networking]
}