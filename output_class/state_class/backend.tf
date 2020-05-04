terraform {
  backend "s3" {
    bucket = "state-class-davron"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
} 