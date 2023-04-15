resource "aws_instance" "ec2_instance" {
    ami = "ami-0263e4deb427da90e"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.SG]
    tags = {Name = "HTTP_SERVER"}
    key_name = "devops"
    count = 1
}
