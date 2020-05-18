resource "aws_security_group" "review1-sec-group" { 
  name        = "review1_web" 
  description = "Allow TLS inbound traffic" 

  ingress {                    # inbound rule 
    description = "TLS from VPC" 
    from_port   = 80 
    to_port     = 80
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]            # multiple resource. list of cird blocks squer bracket means list of resources.
  } 

  ingress { 
    description = "TLS from VPC" 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"] 
  } 

  egress {                    # outbound rule 
    from_port   = 0 
    to_port     = 0 
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"] 
  } 

  tags = { 
    Name = "allow_tls" 
  } 
} 