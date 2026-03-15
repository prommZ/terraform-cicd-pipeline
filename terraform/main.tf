provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "demo_server" {

  ami           = "ami-06b527a1e4cb6f265"
  instance_type = "m7i-flex.large"

  tags = {
    Name = "Terraform-CICD-pipeline"
  }

}
