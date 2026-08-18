[webservers]
%{ for name, config in web_hosts ~}
${name} ansible_host=${config.ansible_host} fqdn=${config.fqdn}
%{ endfor ~}

[databases]
%{ for name, config in db_hosts ~}
${name} ansible_host=${config.ansible_host} fqdn=${config.fqdn}
%{ endfor ~}

[storage]
%{ for name, config in storage_hosts ~}
${name} ansible_host=${config.ansible_host} fqdn=${config.fqdn}
%{ endfor ~}
