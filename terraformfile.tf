terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-04823729c75214919"
   instance_type = "t2.micro"
   key_name = "key"
   vpc_security_group_ids = ["sg-094c99b2b50a02646"]
   tags = {
      Name = "Node"
   }
}
output "ec2_instance_ip" {
  value = aws_instance.myec2.public_ip
}
