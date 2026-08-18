locals {
  web_instances = yandex_compute_instance.web
  db_instances = yandex_compute_instance.db
  storage_instance = yandex_compute_instance.storage
}

resource "local_file" "ansible_inventory" {
  filename = "inventory.ini"
  content = templatefile("inventory.tpl", {
    web_hosts = {
      for k, v in local.web_instances : v.name => {
        ansible_host = v.network_interface[0].nat_ip_address
        fqdn         = v.fqdn
      }
    }
    db_hosts = {
      for k, v in local.db_instances : v.name => {
        ansible_host = v.network_interface[0].nat_ip_address
        fqdn         = v.fqdn
      }
    }
    storage_hosts = {
      storage = {
        ansible_host = local.storage_instance.network_interface[0].nat_ip_address
        fqdn         = local.storage_instance.fqdn
      }
    }
  })
}
