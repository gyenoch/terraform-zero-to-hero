provider "aws" {
  region = "us-east-1"
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

variable "instance_type" {
  type        = string
  description = "Instance type for EC2"
}

variable "instance_name" {
  type = string
  description = "Name for the EC2 instance"
}

resource "aws_instance" "workspace_ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}