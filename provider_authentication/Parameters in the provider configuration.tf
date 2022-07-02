terraform {
  required_version="1.2.1"

  required_providers {
   aws={
        source="hashicorp/aws"
        version="~>4.16"
   }
  }

}

provider "aws" {
    region="ap-south-1"
    access_key="aws_access_key"
    secret_key = "aws_secret_key"
  
}

resource "aws_instance" "my_Os"{

	availability_zone="ap-south-1b"
	ami = "ami-06a0b4e3b7eb7a300"
	instance_type = "t2.micro"
	tags = {
		
			Name="OS1"
		
	}

	
}