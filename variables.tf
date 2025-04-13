# variables.tf - Variáveis globais
variable "aws_region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Nome do projeto"
  type        = string
}
