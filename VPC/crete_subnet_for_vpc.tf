resource "aws_subnet" "MyfirstSubnet" {
    vpc_id = aws_vpc.myvpc1.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "ap-south-1b"
    tags = {
      "Name" = "My-private-subnet-1b"
    }

}

resource "aws_subnet" "MySecondSubnet" {
  vpc_id = aws_vpc.myvpc1.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "My-public-subnet-1a"
  }
  
}