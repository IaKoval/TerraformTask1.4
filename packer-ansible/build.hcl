source "amazon-ebs" "ubuntu" {
  ami_name      = "${var.ami_name_prefix}-${timestamp()}"
  instance_type = var.instance_type
  region        = var.region
  ssh_username  = var.ssh_username

  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      name                = "ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"
      root-device-type    = "ebs"
    }
    most_recent = true
    owners      = ["099720109477"]
  }

  provisioner "ansible" {
    playbook_file = "playbook.yml"
  }
}

build {
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "file" {
    source      = "playbook.yml"
    destination = "/tmp/playbook.yml"
  }

  provisioner "shell" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install ansible -y"
    ]
  }

  post-processor "shell-local" {
    inline = [
      "rm /tmp/playbook.yml"
    ]
  }
}
