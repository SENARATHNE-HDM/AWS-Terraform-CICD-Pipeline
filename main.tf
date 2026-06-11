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
