resource "aws_vpc" "myvpc1" {
    cidr_block = "192.168.0.0/16"
    tags = {
      "Name" = "myFirstvpc"
    }
    enable_dns_support = "false"
    enable_dns_hostnames = "false"
    instance_tenancy = "default"

  
}