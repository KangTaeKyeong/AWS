resource "aws_db_instance" "sdkim_mydb" {
  allocated_storage = 10
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = "mydb"
  identifier = "mydb"
  username = "admin"
  password = "It12345!"
  parameter_group_name = "default.mysql5.7"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.sdkim_dbsn.id
  skip_final_snapshot = true
  tags = {
      Name = "sdkim-mydb"
  }
}

resource "aws_db_subnet_group" "sdkim_dbsn" {
  name  =   "sdkim-dbsb-group"
  subnet_ids = [aws_subnet.sdkim_pria.id,aws_subnet.sdkim_pric.id]
  tags = {
      Name = "sdkim-dbsb-group"
  }
}