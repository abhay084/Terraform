
# use "terraform init" to setup plugin for aws provider
terraform{
	required_providers {
		aws={
			source = "hashicorp/aws"
			version="~>4.16"
		}
	}
}


# here we will pass the login credentials.

provider "aws"{
	#arguments

	region = "ap-south-1"
	access_key = "my_aws_access_key"
	secret_key = "my_aws_secreta-key"

	/* 
	you can get your access key and secret key in aws from here:
	AWS --> Service -->  IAM -->  Users --> Add users --> username --> next --> power_user_policy --> next --> finish.
	
	*/
}

resource "aws_instance" "my_first_instance"  {

	ami = "ami-06a0b4e3b7eb7a300"
	instance_type = "t2.micro"
	tags = {
		Name="OS1"
	}
}
