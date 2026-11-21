module "network" {
  source = "./modules/network"

  name                 = var.project_name
  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = { Project = var.project_name }
}

module "server" {
  source = "./modules/server"

  name       = var.project_name
  vpc_id     = module.network.vpc_id
  subnet_id  = module.network.public_subnet_ids[0]
  key_name   = var.key_name
  admin_cidr = var.admin_cidr
  tags       = { Project = var.project_name }
}

module "eks" {
  source = "./modules/eks"

  name               = var.project_name
  private_subnet_ids = module.network.private_subnet_ids
  tags               = { Project = var.project_name }
}

module "ecr" {
  source = "./modules/ecr"

  repository_names = var.ecr_repositories
  tags             = { Project = var.project_name }
}
