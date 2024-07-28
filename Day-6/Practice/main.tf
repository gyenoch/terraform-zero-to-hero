provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
  description = "instance type for ec2"
  type        = map(string)

  default = {
    "dev"   = "t2.micro"
    "stage" = "t2.medium"
    "prod"  = "t2.xlarge"
  }
}

module "web" {
  source        = "./modules/"
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
  instance_name = "web-${terraform.workspace}"
  
}