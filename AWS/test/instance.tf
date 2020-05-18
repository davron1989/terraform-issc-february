resource "aws_instance" "wordpress" {
  ami             = "${data.aws_ami.amazon_ami.id}"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.review1_pub_key.key_name}"
  security_groups = ["${aws_security_group.review_sec_group.name}"]

  tags = {
    name = "my website"
  }
}
