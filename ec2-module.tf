module "ec2-app-v1" {
  source = "./modules/ec2"
  region = "ap-south-1"
  key-name = "power"
  ami-id = "ami-0cb0e70f44e1a4bb5"
  instance-type = "t2.micro"
  number-of-ec2-instances-required = "3"
  public-key-file-name = "${file("./modules/ec2/power.pub")}"

  instance-name-taq = "cloudelligent-vpn"
  associate-public-ip-address = "true"

  vpc-security-group-ids = "${module.cloudelligent-ec2-sg.ec2-sg-security-group}"
  ec2-subnets-ids = ["${module.vpc.public-subnet-ids}"]

  #IN CASE OF LAUNCHING EC2 IN SPECIFIC SUBNETS OR PRIVATE SUBNETS, PLEASE UN-COMMENT BELOW"
 # ec2-subnets-ids = ["${module.cloudelligent-vpc.private-subnet-ids}"]
 # ec2-subnets-ids = ["","","","","",""]
 # user-data = "${file("./modules/ec2/httpd.sh")}"


}