module "alb-target-group" {
  source = "./modules/alb-target-groups"

  region = "ap-south-1"
  #Application Load Balancer Target Group
  alb-tg-name = "cloudelligent-tg"
  target-group-port = "80"
  target-group-protocol = "HTTP"
  vpc-id = "${module.vpc.vpc-id}"
}