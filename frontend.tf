# ec2 instance create

resource "aws_instance" "frontend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0d39c28f1d7e34d30"]
  tags = {
    Name = "frontend"
      }
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = self.public_ip
    }
    inline = [
      "sudo pip3 install ansible",
      "ansible-pull -i localhost, -U https://github.com/vadalibhavya/roboshop-shell roboshop.yml -e env=dev -e role_name=frontend -e component_name=frontend"

    ]
  }
}


resource "aws_route53_record" "frontend" {
  zone_id = "Z02980273R2SC8CB35MNX"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 10
  records = [aws_instance.frontend.private_ip]
}

