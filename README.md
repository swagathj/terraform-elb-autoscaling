# terraform-elb-autoscaling


terraform init

terraform plan

terraform apply -target=module.vpc

# Note: 1. Create Target Group First
#       2. Create Application Load Balancer
#       3. Create Auto-Scaling Group

terraform apply -target=module.alb-target-group

Go to the AWS traget group and copy the ARN in application-lb-module.tf. And also create ACM certificate and add in application-lb-moudle.tf file

certificate-arn = "arn:aws:acm:ap-south-1:499347118524:certificate/68dfb665-a8e6-4579-9b43-e4a4c50e6cda"
  target-group-arn = "arn:aws:elasticloadbalancing:ap-south-1:499347118524:targetgroup/cloudelligent-tg/9b2756e0c63594f1"

terraform apply -target=module.app-alb
terraform apply -target=module.auto-scaling
