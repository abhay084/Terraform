resource "aws_route_table" "MyVpcRouteTable" {
    vpc_id = aws_vpc.myvpc1.id
    tags = {
      "Name" = "MyRoutetable-1"
    }
   
  
}

resource "aws_route" "define_route" {
    route_table_id = aws_route_table.MyVpcRouteTable.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myVpcInternetGateway.id
  
}