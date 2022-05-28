terraform{

	required_providers{
		mycloud = {
			source = "hashicorp/aws"
			version = "~>4.16"
		}
	}
}

provider "mycloud"{
	region="ap-south-1"
	access_key = "my_aws_access_key"
	secret_key = "my_aws_secret_key"
}

resource "aws_instance" "my_Os"{

	availability_zone="ap-south-1b"
	ami = "ami-06a0b4e3b7eb7a300"
	instance_type = "t2.micro"
	tags = {
		
			Name="OS1"
		
	}

	vpc_security_group_ids=["sg-0fd41c347b9df813b"]
}

