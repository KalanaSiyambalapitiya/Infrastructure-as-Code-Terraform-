output "instance_id" {
    value = aws_instance.skt_ec2.id
}

output "instance_ip" {
    value = aws_instance.skt_ec2.public_ip
}