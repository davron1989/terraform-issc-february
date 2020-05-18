resource "aws_key_pair" "review1_key" {
    key_name    = "london-bastion"
    public_key  = "${file("~/.ssh/id_rsa.pub")}"
  
}
