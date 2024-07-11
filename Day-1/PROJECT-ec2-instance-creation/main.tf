provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_subnets" "example" {
  filter {
    name   = "tag:Name"
    values = ["*private*"]
  }
}

resource "aws_instance" "example" {
  ami = data.aws_ami.ubuntu.id
  #ami           = "ami-04a81a99f5ec58529"  # Specify an appropriate AMI ID
  instance_type = "t2.micro"
  key_name = "my_first_instance"
}