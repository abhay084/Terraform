resource "aws_route_table_association" "firstAssociation" {
    subnet_id = aws_subnet.MySecondSubnet.id
    route_table_id = aws_route_table.MyVpcRouteTable.id
  
}