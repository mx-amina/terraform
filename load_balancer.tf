resource "aws_lb" "ec2_alb" {
	name               = "alt-school-ec2-alb"
	internal           = false
	load_balancer_type = "application"
	security_groups    = [aws_security_group.alb_security_group.id]
	subnets = [ "subnet-0282b9bac3d87157b", "subnet-0b451301888b5cbe3", "subnet-0bad97ec16b1da583" ]
}

resource "aws_lb_target_group" "ec2_tg" {
  name     = "alt-school-ec2-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id = "vpc-06c70605370aeed4f"
}

resource "aws_lb_listener" "ec2_alb_listener" {
  load_balancer_arn = aws_lb.ec2_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ec2_tg.arn
  }
}

resource "aws_lb_target_group_attachment" "ec2_tg_attachments_0" {
  target_group_arn = aws_lb_target_group.ec2_tg.arn
  target_id        = aws_instance.ec2_instance[0].id
  port             = 80
}

resource "aws_lb_target_group_attachment" "ec2_tg_attachments_1" {
  target_group_arn = aws_lb_target_group.ec2_tg.arn
  target_id        = aws_instance.ec2_instance[1].id
  port             = 80
}

resource "aws_lb_target_group_attachment" "ec2_tg_attachments_2" {
  target_group_arn = aws_lb_target_group.ec2_tg.arn
  target_id        = aws_instance.ec2_instance[2].id
  port             = 80
}