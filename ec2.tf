provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east-1"
}

resource "aws_instance" "TerraformEC2Instance" {
  ami           = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile}"
  tags = {
    Name = "TerraformEC2"
  }
}