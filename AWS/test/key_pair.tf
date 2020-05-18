resource "aws_key_pair" "review1_pub_key" {
  key_name   = "davron_bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
