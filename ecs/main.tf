resource "aws_ecs_cluster" "main" {
  name = var.ecs_cluster_name
}

resource "aws_launch_configuration" "ecs" {
  name = "ecs-launch-configuration"
  image_id = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.medium"
  security_groups = [aws_security_group.ecs.id]
  user_data = <<-EOF
              #!/bin/bash
              echo ECS_CLUSTER=${aws_ecs_cluster.main.name} >> /etc/ecs/ecs.config
              EOF
}

resource "aws_autoscaling_group" "ecs" {
  desired_capacity = 1
  max_size = 1
  min_size = 1
  launch_configuration = aws_launch_configuration.ecs.id
  vpc_zone_identifier = aws_subnet.subnet[*].id
}
