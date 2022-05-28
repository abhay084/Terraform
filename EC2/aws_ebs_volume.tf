terraform {
  required_providers{
      mycloud={
          source="hashicorp/aws"
          version="~>4.16"
      }
  }
}

provider "mycloud" {
    region="ap-south-1"
    access_key = "my_aws_access_key"
	secret_key = "my_aws_secreta-key"
}

resource "aws_ebs_volume" "vol1" {
  availability_zone = "ap-south-1b"
  size = 10
  tags = {
    Name = "MyVol"
  }
}