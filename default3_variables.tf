variable "project3" {
	default = "central-phalanx-246109"
}

variable "name3" {
	default = "test3"
}

variable "zone3" {
	default = "europe-west2-c"
}

variable "machine_type3" {
	default = "n1-standard-1"
}

variable "image_project3" {
	default = "ubuntu-os-cloud"
}

variable "image3" {
	default = "debian-9-stretch-v20190618"
}

variable "network3" {
	default = "default"
}

variable "ssh_user3" {
	default = "terraform"
}

variable "public_key3" {
	default = "~/.ssh/id_rsa.pub"
}

variable "private_key3" {
	default = "~/.ssh/id_rsa"
}

variable "package_manager3" {
	default = "apt"
}

variable "update_packages3" {
	default = {
		"apt" = "sudo apt update"
		"yum" = "sudo yum update -y"
	}
}

variable "packages3" {
	default = [
		"wget",
		"unzip"
	]
}

variable "install_packages3" {
	default = {
		"yum" = "sudo yum install -y",
		"apt" = "sudo apt install -y"
	}
}

variable "scripts3" {
	default = []
}

variable "allowed_ports3" {
	default = ["22",
		   "8080",
		   "27017",
		   "4200"
		  ]
}











  
