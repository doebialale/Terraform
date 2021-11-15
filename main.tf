provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "name" {
  vpc_id = aws_vpc.test.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
}

