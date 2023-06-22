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

resource "aws_security_group" "myec2" {
  name        = "myec2-security-group"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "myec2" {
   ami = "ami-0bef6cc322bfff646"
   instance_type = "t2.micro"
   key_name = "key"
   vpc_security_group_ids = [aws_security_group.myec2.id]
   tags = {
      Name = "Example"
   }
}
output "ec2_instance_ip" {
  value = aws_instance.myec2.public_ip
}
