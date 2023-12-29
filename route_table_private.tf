# Associating Route Table for Private Subnets
resource "aws_route_table_association" "rt_private_1" {
  subnet_id        = aws_subnet.application-subnet-1.id 
  route_table_id   = aws_route_table.route_private.id
}

resource "aws_route_table_association" "rt_private_2" {
  subnet_id        = aws_subnet.application-subnet-2.id
  route_table_id   = aws_route_table.route_private.id
}

# Creating Route Table for Private Subnets
resource "aws_route_table" "route_private" {
  vpc_id = aws_vpc.demovpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }

  tags = {
    Name = "Route to NAT Gateway"
  }
}
