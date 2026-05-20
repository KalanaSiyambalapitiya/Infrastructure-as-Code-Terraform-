resource "aws_instance" "skt_ec2" {
    ami =   var.AMI_ID
    instance_type = "t2.micro"
    tags = {
        Name = "first-instance"

    }
    vpc_security_group_ids = [aws_security_group.ec2_sg.id]
    key_name               = aws_key_pair.kal_key.key_name
}

resource "aws_key_pair" "kal_key" {
    key_name = "kal-key"
    public_key = file("modules/keys/kal-key.pub")
}