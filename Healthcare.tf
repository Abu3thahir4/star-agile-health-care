provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIAVRUVQBRXQTPECPTF"
  secret_key = "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"
}

# Create AWS Instance

resource "aws_instance" "Prod-Server" {
 ami = "ami-060e277c0d4cce553"
 instance_type = "t2.micro"
 availability_zone = "ap-southeast-1"
 key_name = "Sinkey"
 user_data  = <<-EOF
 #!/bin/bash
     sudo apt-get update -y
 EOF
 tags = {
 Name = "Prod-Server"
 }
}
