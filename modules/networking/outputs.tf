# modules/networking/outputs.tf - Outputs do módulo de rede
output "vpc_id" {
  description = "ID da VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block da VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnets" {
  description = "Lista de IDs das subnets públicas"
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "Lista de IDs das subnets privadas"
  value       = aws_subnet.private[*].id
}

output "nat_gateway_ips" {
  description = "IPs públicos dos NAT Gateways"
  value       = aws_eip.nat[*].public_ip
}
