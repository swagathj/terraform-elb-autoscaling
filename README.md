What is Terraform?

Terraform is a tool made by Hashicorp for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers ( aws, azure, Google cloud) as well as custom in-house solutions.

You can compare Terraform to Cloudformation . They are simililar but at the same time have differences.

Steps to provision

1. Download the terraform binary file https://www.terraform.io/downloads.html
If MAC users have homebrew installed on their machine: Just do: brew install terraform Go to step 5

2. Extract the zip file
3. You will see the terraform binary executable file
4. make sure that the terraform binary is available on the PATH.

For Mac/Linux. On the shell/terminal, go to the folder where terraform binary is extracted

	echo $"export PATH=\$PATH:$(pwd)" >> ~/.bash_profile
	source ~/.bash_profile

5. make a new directory(can be named anything) and go inside the directory

	mkdir terraform-elb-autoscaling && cd terraform-terraform-elb-autoscaling

6. Paste your code or clone your code to the directory.

# terraform-elb-autoscaling


#--> terraform init

#--> terraform plan

#--> terraform apply -target=module.vpc

# Note: 
#	1. Create Target Group First
#       2. Create Application Load Balancer
#       3. Create Auto-Scaling Group

#--> terraform apply -target=module.alb-target-group

Note: Go to the AWS traget group and copy the ARN paste in application-lb-module.tf in place of "target-group-arn". And also create ACM certificate and add in application-lb-moudle.tf file

# Below is the examples:

  certificate-arn = "arn:aws:acm:ap-south-1:499347118524:certificate/68dfb665-a8e6-4579-9b43-e4a4c50e6cda"
  target-group-arn = "arn:aws:elasticloadbalancing:ap-south-1:499347118524:targetgroup/cloudelligent-tg/9b2756e0c63594f1"

#--> terraform apply -target=module.app-alb


#--> terraform apply -target=module.auto-scaling
