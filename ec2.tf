provider "aws" {
      region = "us-east-1"
   }
resource "aws_instance" "production-ins" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.my_sg.id]
    tags = {
       name = "production-try"
        }
   }
resource "aws_security_group" "my_sg" {
    name = "my-sg"
    vpc_id = "vpc-04de7fe2259ad9095"

    ingress {
      protocol = "tcp"
      to_port = 80
      from_port = 80
      cidr_blocks = ["0.0.0.0/0"]
   }
    egress {
      protocol = "-1"
      to_port = 0
      from_port = 0
      cidr_blocks = ["0.0.0.0/0"]
     }
 }
