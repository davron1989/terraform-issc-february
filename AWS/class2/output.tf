resource "aws_instance" "web2" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}

output "instance_id" {
  value = "${aws_instance.web2.id}"
}

output "instance_arn" {
  value = "${aws_instance.web2.arn}"
}

output "instance_public_ip" {
  value = "${aws_instance.web2.public_ip}"
}

output "instance_pub_dns" {
  value = "${aws_instance.web2.public_dns}"
}

output "instance_az" {
  value = "${aws_instance.web2.availability_zone}"
}

