variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "pub-sub1-cidr" {
  type    = string
  default = "10.0.0.0/24"
}