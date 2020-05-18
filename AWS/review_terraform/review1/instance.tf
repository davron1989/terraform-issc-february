resource "aws_instance" "web" {
    ami =   "ami-0d6621c01e8c2de2c"
    instance_type   =   "t2.micro"
    key_name        =   "${aws_key_pair.review1_key.id}"
    security_groups =   [ "${aws_security_group.review1-sec-group.name}"]
    user_data       =   "${file("wordpress_user_data.sh")}"
    tags            =   {
        name        =   "wordpress"
    }
}
