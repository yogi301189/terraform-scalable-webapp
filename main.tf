module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source              = "./modules/ec2"
  vpc_id              = module.vpc.vpc_id
  public_subnet_ids   = module.vpc.public_subnet_ids
  alb_target_group_arn = module.alb.target_group_arn
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  ec2_sg_id         = module.ec2.ec2_sg_id
}
