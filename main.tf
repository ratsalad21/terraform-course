provider "aws" {
    region = "us-east-2"
    access_key = "AKIAZDLWXXWVJEFVP7FA"
    secret_key = "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"
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "us-east-2a" 
}