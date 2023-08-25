provider "aws" {
  region = var.region
}
resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
}
resource "aws_subnet" "this" {
  vpc_id = aws_vpc.this.id
  cidr_block = var.subnet_cidr
}
data "aws_ssm_parameter" "this"
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"