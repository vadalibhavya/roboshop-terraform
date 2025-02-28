terraform {
  required_providers {
    ad = {
      source  = "hashicorp/ad"
      version = "0.5.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
# ec2 instance create

resource "aws_instance" "mongodb" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = "frontend"
  }

}


resource "aws_route53_record" "mongodb" {
  zone_id = "Z02980273R2SC8CB35MNX"
  name    = "mongodb-dev"
  type    = "A"
  ttl     = 10
  records = [aws_instance.mongodb.private_ip]
}

resource "null_resource" "mongodb" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = aws_instance.mongodb.private_ip
    }
    inline = [
      "sudo pip3 install ansible",
      "ansible-pull -i localhost, -U https://github.com/vadalibhavya/roboshop-ansible roboshop.yml -e env=dev -e role_name=mongodb -e component_name=mongodb"

    ]
  }

}