terraform { 
backend "s3" { 
bucket = "davron-terraform-eks" 
key = "application/us-east-1/state/dev/infra.tfstate.json" 
region = "us-east-1" 
  } 
} 
