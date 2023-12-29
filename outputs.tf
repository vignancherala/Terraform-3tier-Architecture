# Getting the DNS of load balancer
output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.external-alb.dns_name
}

# Outputting Subnet IDs
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id]
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = [aws_subnet.application-subnet-1.id, aws_subnet.application-subnet-2.id, aws_subnet.database-subnet-1.id, aws_subnet.database-subnet-2.id]
}
