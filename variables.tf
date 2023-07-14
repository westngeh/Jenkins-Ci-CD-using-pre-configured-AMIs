variable "aws_ami" {
  type = map (string) 
  default = {
    "jenkins" = "ami-066cbfc4454ff9c35"
    "sonarqube" = "ami-00a8d9d3ededf5919"
    "nexus" = "ami-056996b220e909718"
    "tomcat" = "ami-0c21eec8ca6ed0f8f"
    "jk-agent" = "ami-0b2abda522a980f53"
    "jk-agent2" = "ami-0e63a2b82bf3d857d"

  }  
}
/* variable "vpc_id" {
  type = string
  default = "sg-0c5d1c81b962df83e" */

variable "subnet_id" {
  type = string
  default = "subnet-08b845a3359da56d6"
  
}
variable "key_name" {
  type = string
  default = "appkey"
}
output "publicIP" {
  value = aws_instance.jenkins.public_ip
}
output "privateIP" {
  value = aws_instance.sonarqube.private_ip
}
