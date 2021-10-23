resource "aws_codedeploy_app" "aws_codedeploy" {
  compute_platform = "Server"
  name = "aws-codedeploy"

  tags = {
    Name = "${var.TAG_PREFIX}-codedeploy-app"
  }
}
