resource "aws_key_pair" "review2_key_pair" {
    key_name    =   "london_bastion"
    public_key  =   "${file("~/.ssh/id_rsa.pub")}"
  
}
