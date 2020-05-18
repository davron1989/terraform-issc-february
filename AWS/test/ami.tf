data "aws_ami" "amazon_ami" {
  most_recent = true

  owners = ["137112412989"]

  filter {
    name   = "state"
    values = ["available"]
  }

  #    filter {
  #     name   = "name"
  #     values = ["CentOS-7-x86_64-Minimal-8GiB-HVM*"]    
  #   }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  tags = {
    Name = "app-server"
  }
}
