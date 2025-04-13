# backend.tf - Configuração de backend para armazenar estado do Terraform
terraform {
  backend "s3" {
    # Estas variáveis serão substituídas pelo GitHub Actions
    bucket         = "terraform-state-bucket-name"
    key            = "network/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}