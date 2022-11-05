resource "aws_instance" "dockerimage123" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "Devops"
  user_data = file("dockerinstall.sh")
  security_groups = [ "launch-wizard-3" ]
  tags = {
    Name = "dockerimage123"
}
}