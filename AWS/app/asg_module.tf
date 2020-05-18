module "app1" { 
    source = "./module" 
    region = "us-east-1" 

} 

module "wordpress" { 
    source = "./module" 
    region = "eu-west-1" 

} 