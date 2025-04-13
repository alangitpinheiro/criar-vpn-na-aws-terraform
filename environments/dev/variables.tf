# environments/dev/variables.tf - Variáveis para o ambiente de desenvolvimento
variable "vpc_cidr" {
  description = "CIDR block para a VPC"
  type        = string
}

variable "azs" {
  description = "Zonas de disponibilidade"
  type        = list(string)
}

variable "private_subnets" {
  description = "Lista de CIDRs para subnets privadas"
  type        = list(string)
}

variable "public_subnets" {
  description = "Lista de CIDRs para subnets públicas"
  type        = list(string)
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Nome do projeto"
  type        = string
}