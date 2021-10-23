resource "aws_key_pair" "aws_webserver_key" {
  key_name   = "${var.TAG_PREFIX}-webserver-key"
  public_key = file(var.PATH_TO_WEBSERVER_PUBLIC_KEY)
}

resource "aws_instance" "ec2_instance" {
  ami           = var.AMI_ID
  instance_type = "t2.micro"

  iam_instance_profile = aws_iam_role.CodeDeployInstanceRole.name

  key_name = aws_key_pair.aws_webserver_key.key_name

  tags = {
    Name = "${var.TAG_PREFIX}-ec2-instance"
  }
}
