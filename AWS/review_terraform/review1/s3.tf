resource "aws_s3_bucket" "review1-s3-bucket" {
  bucket    =   "review-bucket2"
  acl       =   "private"
  tags      =   {
      Name  =   "My bucket"
      Envirenment   =   "Dev"
  }
}
