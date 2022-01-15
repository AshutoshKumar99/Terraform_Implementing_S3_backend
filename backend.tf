#Storing state file remotly in S3 bucket
terraform {
  backend "s3" { #Backend type is S3
    bucket = "aashu-remote-backend" #Bucket name what we created earlier to store terraform.tfstate,Need to create bucket first from UI
    key    = "terraform/myremotedemo.tfstate"  #folder path where you would like to store the state file, where terraform is the folder name and state file name is myremotedemo.tfstate 
    region = "ap-south-1"
    access_key = "" # leave these 2 keys blank,  it will popup like input var. Or it will not give any error as you have setup credentials via cli
    secret_key = ""
  }
}

 #key    = "myremotedemo.tfstate" #Name of the tfstate file, from this name tfstate file will be created in S3 bucket

