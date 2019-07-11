resource "google_compute_instance" "default" {
        name = "${var.name}"
        machine_type = "${var.machine_type}"
        zone = "${var.zone}"
        tags = ["${var.name}"]
        boot_disk {
                initialize_params {
                        image = "${var.image}"
                }
        }
        network_interface {
                network = "${var.network}"
                access_config {
                        // Ephemeral IP
                }
        }
        metadata = {
        sshKeys = "${var.ssh_user}:${file("${var.public_key}")}"
        }
        connection {
                type = "ssh"
                user = "${var.ssh_user}"
    host = "${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}"
                private_key = "${file("${var.private_key}")}"
        }
        provisioner "remote-exec" {
                inline = [
                        "${var.update_packages[var.package_manager]}",
                        "${var.install_packages[var.package_manager]} ${join(" ", var.packages)}"
                ]
        }
        provisioner "remote-exec" {
                scripts = "${var.scripts}"
        }
}

resource "google_compute_instance" "default2" {
        name = "${var.name2}"
        machine_type = "${var.machine_type2}"
        zone = "${var.zone2}"
        tags = ["${var.name2}"]
        boot_disk {
                initialize_params {
                        image = "${var.image2}"
                }
        }
        network_interface {
                network = "${var.network2}"
                access_config {
                        // Ephemeral IP
                }
        }
        metadata = {
        sshKeys = "${var.ssh_user2}:${file("${var.public_key}")}"
        }
        connection {
                type = "ssh"
                user = "${var.ssh_user2}"
    host = "${google_compute_instance.default2.network_interface.0.access_config.0.nat_ip}"
                private_key = "${file("${var.private_key}")}"
        }
        provisioner "remote-exec" {
                inline = [
                        "${var.update_packages2[var.package_manager2]}",
                        "${var.install_packages2[var.package_manager2]} ${join(" ", var.packages2)}"
                ]
        }
        provisioner "remote-exec" {
                scripts = "${var.scripts2}"
        }
}

resource "google_compute_instance" "default3" {
        name = "${var.name3}"
        machine_type = "${var.machine_type3}"
        zone = "${var.zone3}"
        tags = ["${var.name3}"]
        boot_disk {
                initialize_params {
                        image = "${var.image3}"
                }
        }
        network_interface {
                network = "${var.network3}"
                access_config {
                        // Ephemeral IP
                }
        }
        metadata = {
        sshKeys = "${var.ssh_user3}:${file("${var.public_key}")}"
        }
        connection {
                type = "ssh"
                user = "${var.ssh_user3}"
    host = "${google_compute_instance.default3.network_interface.0.access_config.0.nat_ip}"
                private_key = "${file("${var.private_key}")}"
        }
        provisioner "remote-exec" {
                inline = [
                        "${var.update_packages3[var.package_manager3]}",
                        "${var.install_packages3[var.package_manager3]} ${join(" ", var.packages3)}"
                ]
        }
        provisioner "remote-exec" {
                scripts = "${var.scripts3}"
        }
}
