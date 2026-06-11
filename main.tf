terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # 🌟 ලැබ් එකවුන්ට් එකක් නිසා අපි State එක තාවකාලිකව මෙහෙම තියනවා
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "cicd_server" {
  ami           = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS
  instance_type = "t3.micro"

  tags = {
    Name = "DevOps-Project5-CICD-Server"
  }
}