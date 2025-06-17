
resource "aws_vpc" "ec2_all_vpc" {
    cidr_block = "192.168.0.0/24"
    tags = {
      name= "VPC For Ec2"
    }
  
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.ec2_all_vpc.id
    cidr_block = "192.168.0.0/28"
    tags = {
      name = " Public VPC"
    }
  
}

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.ec2_all_vpc.id
    cidr_block = "192.168.0.16/28"
    tags = {
      name = "Private VPC"
    }
  
}


resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.ec2_all_vpc.id
    tags = {
      name = "Internet Gateway"
    }
  
}

resource "aws_route_table" "route_table" {
    vpc_id = aws_vpc.ec2_all_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ig.id
    }
  
}

resource "aws_route_table_association" "routing" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.route_table.id
  
}