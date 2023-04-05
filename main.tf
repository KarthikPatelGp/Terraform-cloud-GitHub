terraform {
    required_version = "~> 1.4.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "karthikinfra" {
	ami = "ami-00c39f71452c08778" 
	instance_type = "t2.micro"
}
