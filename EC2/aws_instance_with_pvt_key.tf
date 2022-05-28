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
	secret_key = "my_aws_secreta-key"
}

resource "aws_instance" "my_Os"{

	key_name = "terraform_training"
	availability_zone="ap-south-1b"
	ami = "ami-06a0b4e3b7eb7a300"
	instance_type = "t2.micro"
	tags = {
		
			Name="OS1"
		
	}

	vpc_security_group_ids=["sg-0fd41c347b9df813b"]

	connection {
	  type="ssh"
	  user="ec2-user"
	  host = aws_instance.my_Os.public_ip
	  private_key = file("terraform_training.pem")

	}


}

