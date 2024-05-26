// DB subnet
resource "aws_db_subnet_group" "subnet-sml" {
  name       = "subnet-sml"
#   subnet_ids = [aws_subnet.frontend.id, aws_subnet.backend.id]
subnet_ids = ["subnet-0df926d83a7ba1a6e", "subnet-0c3bb0b2d113f0f57"]

  tags = {
    Name = "My SML DB subnet group"
  }
}