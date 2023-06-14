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
  access_key = withCredentials([string(credentialsId: '14d886a4-624f-4884-81aa-0835c6f8e437')])
  secret_key = withCredentials([string(credentialsId: '1811d972-912b-4f5d-b451-49044a08e7af')])
 // access_key = ["${AWS_ACEESS_KEY}"]
 // secret_key = ["${AWS_SECRET_KEY}"]
}
resource "aws_instance" "myec2" {
   ami = "ami-0bef6cc322bfff646"
   instance_type = "t2.micro"
   key_name = "key"
   tags = {
      Name = "Example"
   }

}
