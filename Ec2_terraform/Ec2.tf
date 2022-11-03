resource "aws_instance" "dockerimage" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "Devops"
  subnet_id = aws_subnet.docker-Subnet1.id
  associate_public_ip_address = true
  user_data = file("dockerinstall.sh")
  tags = {
    Name = dockerimage
}
}