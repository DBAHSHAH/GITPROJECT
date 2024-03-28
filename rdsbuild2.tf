terraform {
required_providers {
aws = {
source = "hashicorp/aws"
}
}
}

provider "aws" { 
region = "eu-west-1"
}

resource "aws_instance" "MyFirstec2" { 
ami = "ami-d834aba1"
instance_type = "t2.micro"
tags = {
Name = "Terraform-MyFirstec2"
     }


}