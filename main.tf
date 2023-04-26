
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkins" {
  ami          = var.aws_ami["jenkins"]
  instance_type  = "t3.medium"
  vpc_security_group_ids = ["sg-0c5d1c81b962df83e"]
  subnet_id = var.subnet_id
  associate_public_ip_address = true
  key_name = var.key_name
  tags = {
    Name = "jenkins"
  }
}

resource "aws_instance" "sonarqube" {
  ami         = var.aws_ami["sonarqube"]
  instance_type   = "t3.medium"
  vpc_security_group_ids  = ["sg-0c5d1c81b962df83e"]
  subnet_id  = var.subnet_id
  associate_public_ip_address = true
  key_name  = var.key_name
  tags = {
    Name = "sonarqube"
  }
}

resource "aws_instance" "nexus" {
  ami          = var.aws_ami["nexus"]
  instance_type  = "t3.medium"
  vpc_security_group_ids = ["sg-0c5d1c81b962df83e"]
  subnet_id  = var.subnet_id
  associate_public_ip_address = true
  key_name = var.key_name
  tags = {
    Name = "nexus"
  }
}

resource "aws_instance" "tomcat" {
  ami       = var.aws_ami["tomcat"]
  instance_type  = "t3.medium"
  vpc_security_group_ids = ["sg-0c5d1c81b962df83e"]
  subnet_id = var.subnet_id
  associate_public_ip_address = true
  key_name = var.key_name
  tags = {
    Name = "tomcat"
  }
}
resource "aws_instance" "agent" {
  ami        = var.aws_ami["jk-agent"]
  instance_type = "t2.medium"
  vpc_security_group_ids = ["sg-0c5d1c81b962df83e"]
  subnet_id = var.subnet_id
  associate_public_ip_address = true
  key_name = var.key_name
  tags = {
    Name = "jk-agent"
  }
}
resource "aws_instance" "agent2" {
  ami             = var.aws_ami["jk-agent2"]
  instance_type   = "t2.medium"
  vpc_security_group_ids = ["sg-0c5d1c81b962df83e"]
  subnet_id      = var.subnet_id
  associate_public_ip_address = true
  key_name    = var.key_name
  tags = {
    Name = "jk-agent2"
  }
}
