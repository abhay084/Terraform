
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
	secret_key = "my_aws_secret_key"
}
