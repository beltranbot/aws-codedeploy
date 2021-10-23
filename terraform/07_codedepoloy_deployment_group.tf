resource "aws_codedeploy_deployment_group" "codedeploy_deployment_group" {
  app_name              = aws_codedeploy_app.aws_codedeploy.name
  deployment_group_name = "${var.TAG_PREFIX}-${var.CD_DEPLOYMENT_GROUP}"
  service_role_arn      = aws_iam_role.CodeDeployServiceRole.arn

  deployment_config_name = "CodeDeployDefault.OneAtATime"

  ec2_tag_set {
    ec2_tag_filter {
      key   = "Name"
      type  = "KEY_AND_VALUE"
      value = "${var.TAG_PREFIX}-ec2-instance"
    }
  }

  auto_rollback_configuration {
    enabled = true
    events  = ["DEPLOYMENT_FAILURE"]
  }

}
