provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIAVRUVQBRXQTPECPTF"
  secret_key = "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"
}

# Create AWS Instance

resource "aws_instance" "instance1" {
  
  ami           = "ami-0497a974f8d5dcef8"
  instance_type = "t2.medium"
  key_name      = "Sinkey"

  tags = {
    Name = "Test"
  }
}
