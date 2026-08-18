output "web_ips" {
  value = {
    for k, v in yandex_compute_instance.web : v.name => v.network_interface[0].nat_ip_address
  }
  description = "External IPs of web servers"
}

output "db_ips" {
  value = {
    for k, v in yandex_compute_instance.db : v.name => v.network_interface[0].nat_ip_address
  }
  description = "External IPs of database servers"
}

output "storage_ip" {
  value = yandex_compute_instance.storage.network_interface[0].nat_ip_address
  description = "External IP of storage server"
}
