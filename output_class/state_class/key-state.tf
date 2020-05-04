
resource "aws_key_pair" "us-east-1-key-state-class" {
  key_name   = "davron-state-class"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

