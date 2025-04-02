resource "aws_instance" "main" {

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }

  provisioner "local-exec" {
    command = "sleep 10 ;  cd /home/ec2-user/learn-ansible/; ansible-playbook -i ${self.private_ip},  -e ansible_user=ec2-user -e ansible_password=DevOps321 -e env=dev -e component=${var.name} expense.yaml"
  }
}


resource "aws_route53_record" "main" {
  zone_id = var.zone_id
  name    = "${var.name}-${var.env}.clouding-app.shop"
  type    = "A"
  ttl     = 10
  records = [aws_instance.main.private_ip]
}

