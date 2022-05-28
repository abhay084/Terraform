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

resource "aws_instance" "MyOS" {  
  ami = "ami-06a0b4e3b7eb7a300"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "os1"
  }
  instance_type = "t2.micro"
  key_name = "terraform_training"
  
}

resource "aws_volume_attachment" "vol_attach" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.vol1.id
  instance_id = aws_instance.MyOS.id
}