resource "aws_security_group" "my_public_app_sg" {
    name = "my_public_app_sg" 
    description = "allow access to the server"
    vpc_id = data.aws_vpc.main_vpc.id

    #INBOUND CONNECTIONS 
    ingress{
        description = "allow ssh into the EC2"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #OUTBOUND CONNECTIONS
    egress {
        description = "allow acces to the world"
        from_port = 0
        to_port = 0
        protocol = "-1" # TCP + UDP
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "my_private_app_sg" {
    name = "my_private_app_sg" 
    description = "allow access to the server"
    vpc_id = data.aws_vpc.main_vpc.id

    # INBONUD CONNECTIONS

  ingress {
    description = "Allow SSH into the EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.0/24"] 
  }

  #OUTBOUND CONNECTIONS

  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}