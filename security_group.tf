resource "yandex_vpc_security_group" "default" {
  name        = "default-sg"
  description = "Default security group"
  network_id  = var.network_id

  ingress {
    protocol       = "TCP"
    description    = "SSH"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 22
  }

  ingress {
    protocol       = "TCP"
    description    = "HTTP"
    v4_cidr_blocks = ["0.0.0.0/0"]
    port           = 80
  }

  egress {
    protocol       = "ANY"
    description    = "Any"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
}
