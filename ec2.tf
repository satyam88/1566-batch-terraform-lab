data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.3*"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "myinstance_mumbai" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {
    names       = "satyam-instance"
    Environment = "prod"
    Team        = "App-infra"
    region      = "mumbai"
  }
}


resource "aws_instance" "myinstance_hyd" {
  ami           = "ami-0702b1aec03c6a3a4"
  instance_type = var.instance_type
  count         = var.instance_count
  provider      = aws.hyd

  tags = {
    names       = "satyam-instance"
    Environment = "prod"
    Team        = "App-infra"
    region      = "hyd"
  }
}
resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucket-name

  tags = {
    Name        = "satyam-bucket"
    Environment = "prod"
  }
}

resource "aws_vpc" "myvpc001" {
  cidr_block = var.network-range

  tags = {
    Name        = "satyam-vpc"
    Environment = "prod"
  }
}