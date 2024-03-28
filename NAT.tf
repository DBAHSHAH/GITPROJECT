resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-eu-west-1a.id

  tags = {
    Name    = "app1_igw"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }

  depends_on = [aws_internet_gateway.app1_igw]
}