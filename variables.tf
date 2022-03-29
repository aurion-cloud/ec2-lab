variable = "aws_owner_id" {
    description = "Contain the Owner ID of the ami for amazon linux"
    type = string 
}

variable = "aws_ami_name" {
    description = "Name of the ami I want for my project"
    type = string
}

variable = "vpc_name" {
    description = " Name of the vpc for my project"
    type = string
    default = t2.small
}

variable = "public_subnet_name" {
    type = string
}

variable = "private_subnet_name" {
    type = string 

}

variable = "my_keypair" {
    default= "aws_keypairta"
}

variable = "number_of_instances" {
    description = "Total amount of instances"
}
