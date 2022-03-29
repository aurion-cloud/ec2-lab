resource "aws_security_group" "my_public_app_sg" {
  name        = "my_public_app_sg"
  description = "Allow access to this server"
  vpc_id      = data.aws_vpc.main_vpc.id

  # INBOUND CONNECTIONS
  ingress {
    description = "Allow SSH into the EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # OUTBOUT CONNECTIONS
  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_security_group" "my_private_app_sg" {
  name = "my_private_app_sg" 
  description = "Allow access to server"
  vpc_id = data.aws_vpc.main_vpc.id
}


#Inbound Connections 

ingress {
    description = "SSH allowed only"
    from_port = 22
    to_port = 2
    protocol = "tcp"
    security_groups = ["sg-0ea427b76210f07cb"]
}