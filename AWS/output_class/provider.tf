provider "aws" {
    region = "us-east-1"
    version = "2.59"
}

// Creates Key
resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "farrukhs_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

// Creates Instance
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}

// Creates Sec_group


//Creates Route53



// Outputs everything
output "key_pair" {
  value = "${aws_key_pair.us-east-1-key-output.key_name}"
}

output "instance_id" {
  value = "${aws_instance.web-output.id}"
}

