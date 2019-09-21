module "app-alb" {
  source = "./modules/application-load-balancer"

  region = "ap-south-1"
  alb-name = "cloudelligent-alb"
  internal = "false"
  alb-sg = "${module.cloudelligent-ec2-sg.ec2-sg-security-group}"
  alb-subnets = "${module.vpc.public-subnet-ids}"
  alb-tag = "cloudelligent-alb"
  certificate-arn = "arn:aws:acm:ap-south-1:499347118524:certificate/68dfb665-a8e6-4579-9b43-e4a4c50e6cda"
  target-group-arn = "arn:aws:elasticloadbalancing:ap-south-1:499347118524:targetgroup/cloudelligent-tg/9b2756e0c63594f1"
}