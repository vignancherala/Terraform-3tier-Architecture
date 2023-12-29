# Creating NAT Gateway
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public-subnet-1.id
}

# Creating Elastic IP for NAT Gateway
resource "aws_eip" "nat_eip" {
  instance = aws_instance.demoinstance.id
}
