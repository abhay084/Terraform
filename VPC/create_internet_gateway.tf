resource "aws_internet_gateway" "myVpcInternetGateway" {
    vpc_id = aws_vpc.myvpc1.id
    tags = {
      "Name" = "MyinternetGateway-1"
    }
    
}