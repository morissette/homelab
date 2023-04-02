variable "ssh_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDhvE6lqqsP15UUMDaN+2llkNsgLXtoDCMsj1ZjXFjleu8tBSnPlRmBg+vOgCK2bXXKAy5PbWlSSC7EIN3a8O/+RPKKP9wBCS3PFQ00Wqp0VYBpR+pzp1fD2bJrK8o198ekOYMS9opYS+3A32YGRNBQJ1UjVz3SbrDCHOummKPYL1ibc5brZQQ92Nug+DQXz3zsZBt3RZ34TjMx6PSEwVlV8Ch8MIdAVtYaN+TC7Kdkbv9tpr1DbD/pL/Tx9aWtuyTsKocvB7witLRLMK4dv4yA/DQ06CqHXEwQFyn0eiLu1C31fj3ANgE5KxLwsLruaQIOIgJkEju2oRDgXEUXo8TXYNHF03Falfsbqi2hzsgYCYrlOeeqcS9lOM1RdLfhL6Wy+8opaAw7GywEavwzYAbxuRiWOHYo1Z9N/x51t8hEuA6/3UoBctmlsfrQrFLjdog++vSTDg3m2cgugFsCPGcXyNa+opNgiwmgsjEdqdcHIuYMS2Y7bSIl4oUK3NoGmc="
}

variable "proxmox_host" {
    default = "prox-1u"
}

variable "template_name" {
    default = "ubuntu-2204-cloudinit-template"
}
