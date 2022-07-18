resource "aws_instance" "MyEC2VPC" {
    tags = {
      "Name" = "custom_vpc_instance"
    }
    ami = "ami-08df646e18b182346"
    instance_type = "t2.micro"
    key_name = "AWS_CSA_training"
    subnet_id = aws_subnet.MyfirstSubnet.id
    
  
}