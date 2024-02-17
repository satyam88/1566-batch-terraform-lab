output "public_ip" {
  value = aws_instance.myinstance_hyd[*].public_ip
}

output "public_dns" {
  value = aws_instance.myinstance_hyd[*].public_dns
}

output "ami_id" {
  value = aws_instance.myinstance_hyd[*].ami
}


output "mumbai_public_ip" {
  value = aws_instance.myinstance_mumbai[*].public_ip
}

output "mumbai_public_dns" {
  value = aws_instance.myinstance_mumbai[*].public_dns
}

output "mumbai_ami_id" {
  value = aws_instance.myinstance_mumbai[*].ami
}