resource "aws_key_pair" "ec2_key" {
  key_name = "altschool"
  public_key = file("altschool.pub")
  tags = {
    "name" = "altschool"
  }
}