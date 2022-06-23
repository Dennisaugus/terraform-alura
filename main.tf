terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile  = "terraform-aws"
  region = "us-east-1"
}

resource "aws_instance" "dev1-alura" {
  ami = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
  key_name = "iac-alura"  
  tags = {
    "Name" = "dev1-alura"
  }

}

