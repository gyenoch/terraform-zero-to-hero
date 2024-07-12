provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source              = "./modules/ec2_instance"
  ami_value           = "ami-0b72821e2f351e396" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value     = "subnet-078558c9b90595265"
}