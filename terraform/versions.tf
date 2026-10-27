terraform {
  required_version = "= 1.17.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 6.70.0"
    }
  }
}

# プロファイルは -var で明示的に渡す（リポジトリに残さない）
provider "aws" {
  region  = var.region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project = var.project_name
    }
  }
}
