resource "aws_key_pair" "sdkim_key" {
  key_name        ="sdkim-key"
  public_key      = file("../../.ssh/id_rsa.pub")  
}