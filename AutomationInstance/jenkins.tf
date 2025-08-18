resource "aws_instance" "datasourceexample" {

  ami                    = "ami-09c813fb71547fc4f" # This is our devops-practice AMI RHEL 9 ID
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t3.micro"
  
    root_block_device {
            volume_size = 50 #extending root volume size from 20 to 50 GB
            volume_type = "gp3" #general purpose ssd
            delete_on_termination = true #Automatically delete the volume when instance is terminated
    }
    
  tags = {
    Name    = "terraform-demo"
    Purpose = "Terraform practice"
  }

}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}