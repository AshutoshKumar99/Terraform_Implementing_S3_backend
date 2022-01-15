provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_vpc" "test" {
    cidr_block = "10.0.0.0/16"
  
}


#Added just 1 simple resource for resource - apply and destroy , will create tfstate will info. associated to the resource vpc

#Note- you can also add backend.tf configurations in main.tf , this is optional.