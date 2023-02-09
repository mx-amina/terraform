resource "aws_instance" "ec2_instance" {
	count = 3
	ami = "ami-00de6c6491fdd3ef5"
	instance_type = "t2.micro"
	security_groups = [ aws_security_group.ec2_security_group.name ]
	tags = {
		"name" = "ALT SCHOOL"
	}
	depends_on = [
		aws_security_group.ec2_security_group
	]
	user_data = file("./deployer.sh")
	key_name = aws_key_pair.ec2_key.key_name
}
