provider "aws" {
  region     = "us-east-2"
  access_key = "762133718820"
  secret_key = "AKIA3C4VVU4SHSLMCA5N"
}

resource "aws_instance" "linux" {
  ami                     = "ami-09f85f3aaae282910"
  instance_type           = "t2.micro"
  tags = {
   Name = "linux"
 }
}
