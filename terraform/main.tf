resource "aws_launch_configuration" "app_lc" {
  name_prefix   = "app-lc-"
  image_id      = "ami-0abcdef1234567890"
  instance_type = "t2.micro"
  key_name      = "your-key-pair"

  lifecycle {
    create_before_destroy = true
  }
}
