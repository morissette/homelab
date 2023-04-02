resource "proxmox_vm_qemu" "kube-server" {
  count = 1
  name = "kube-server-0${count.index + 1}"
  qemu_os = "other"
  target_node = "lab"
  vmid = "40${count.index + 1}"
  clone = "ubuntu-2204-cloudinit-template"
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 4096
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = "10G"
    type = "scsi"
    storage = "local-lvm"
    #storage_type = "zfspool"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }
  
  network {
    model = "virtio"
    bridge = "vmbr17"
  }
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "ip=192.168.1.12${count.index + 1}/24,gw=192.168.1.1"
  ipconfig1 = "ip=10.17.0.4${count.index + 1}/24"
  sshkeys = <<EOF
  ${var.ssh_key}
  EOF
}
resource "proxmox_vm_qemu" "kube-agent" {
  count = 3
  name = "kube-agent-0${count.index + 1}"
  qemu_os = "other"
  target_node = "lab"
  vmid = "50${count.index + 1}"
  clone = "ubuntu-2204-cloudinit-template"
  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 4096
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = "10G"
    type = "scsi"
    storage = "local-lvm"
    #storage_type = "zfspool"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }
  
  network {
    model = "virtio"
    bridge = "vmbr17"
  }
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "ip=192.168.1.5${count.index + 1}/24,gw=192.168.1.1"
  ipconfig1 = "ip=10.17.0.5${count.index + 1}/24"
  sshkeys = <<EOF
  ${var.ssh_key}
  EOF
}
