resource "aws_instance" "review2_web" {
    ami             =   "ami-0f7919c33c90f5b58"
    instance_type   =   "t2.micro"
    key_name        =   "${aws_key_pair.review2_key_pair.id}"
  
}
