resource "aws_subnet" "public1" {
  vpc_id                   = "${aws_vpc.main.id}"
  cidr_block               = "${var.public_cidr1}"
  availability_zone        = "${var.region}${var.az1}"
  tags       = "${var.tags}"
  map_public_ip_on_launch = true            # automatically enables ip
}

resource "aws_subnet" "public2" {
  vpc_id                   = "${aws_vpc.main.id}" # gets vpc id
  cidr_block               = "${var.public_cidr2}" # gets user cidr block
  availability_zone        = "${var.region}${var.az2}"  # puts into az
  tags       = "${var.tags}"
  map_public_ip_on_launch = true            # automatically gets public ip
}

resource "aws_subnet" "public3" {
  vpc_id                   = "${aws_vpc.main.id}"
  cidr_block               = "${var.public_cidr3}"
  availability_zone        = "${var.region}${var.az3}"
  tags       = "${var.tags}"
  map_public_ip_on_launch = true            # automatically enables ip
}