output "Key_pair_name" {
  value = "${aws_key_pair.review2_key_pair.key_name}"
}

output "Public_key" {
  value = "${aws_key_pair.review2_key_pair.public_key}"
}
output "Instruction" {
  value = "set uo your account"
}
output "Instance_id" {
  value = "${aws_instance.review2_web.id}"
}
output "Ami_id" {
  value = "${aws_instance.review2_web.ami}"
}

output "Public_ip" {
  value = "${aws_instance.review2_web.public_ip}"
}
output "AZ" {
  value = "${aws_instance.review2_web.availability_zone}"
}


