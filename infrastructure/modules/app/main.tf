resource "aws_elastic_beanstalk_application" "app" {
  name        = "${var.prefix}ultimate-terraform-folder-structure"
  description = "Dummy app created by ultimate-terraform-folder-structure repository"
}

resource "aws_elastic_beanstalk_environment" "env" {
  name                = "${var.environment}-environment"
  application         = aws_elastic_beanstalk_application.app.name
  solution_stack_name = "64bit Amazon Linux 2 v5.5.1 running Node.js 16"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.instance_type
  }
  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = var.autoscaling_min
  }
  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.autoscaling_max
  }
}