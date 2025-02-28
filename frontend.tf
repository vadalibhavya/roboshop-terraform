# ec2 instance create

resource "aws_instance" "frontend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
  tags = {
    Name = "frontend"
      }

}