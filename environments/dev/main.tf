# environments/dev/main.tf - Configuração específica do ambiente de desenvolvimento
module "networking" {
  source = "../../modules/networking"

  vpc_cidr        = var.vpc_cidr
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  environment     = var.environment
  project         = var.project
}