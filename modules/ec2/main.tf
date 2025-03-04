resource "aws_instance" "instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = var.name
  }
}


resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-${var.env}"
  type    = "A"
  ttl     = 10
  records = [aws_instance.instance.private_ip]
}

# resource "null_resource" "check" {
#   provisioner "remote-exec" {
#     connection {
#       type = "ssh"
#       user = "ec2-user"
#       password = "DevOps321"
#       host = aws_instance.instance[each.key].private_ip
#     }
#     inline = [
#       "sudo pip3 install ansible",
#       "ansible-pull -i localhost, -U https://github.com/vadalibhavya/roboshop-ansible roboshop.yml -e env=dev -e role_name=var.instance[count.index] -e component_name=var.instance[count.index]"
#
#     ]
#   }
#
# }