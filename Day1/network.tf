resource "aws_vpc" "HasicorpVPC" {
    cidr_block = var.vpcCidr
  
}
resource "aws_subnet" "HasicorpPubSN" {             
    vpc_id     = aws_vpc.HasicorpVPC.id
    cidr_block = var.PubsubnetCidr
    availability_zone = "${var.PubAZ}"
    tags = {
    Name = "HasicorpPubSN"
    }
}

resource "aws_subnet" "HasicorpPrvtSN1" {
    vpc_id     = "${aws_vpc.HasicorpVPC.id}"
    cidr_block = var.PrvtsubnetCidr
    availability_zone = var.PrvtAZ
    tags = {
    Name = "HasicorpPrvtSN"
    }
}

resource "aws_subnet" "HasicorpPrvtSN2" {
    vpc_id     = "${aws_vpc.HasicorpVPC.id}"
    cidr_block = var.PrvtsubnetCidr
    availability_zone = var.PrvtAZ
    tags = {
    Name = "HasicorpPrvtSN"
    }
}

resource "aws_internet_gateway" "HashicorpIGW" {
    vpc_id = "${aws_vpc.HasicorpVPC.id}"
  
}