variable "project2" {
	default = "central-phalanx-246109"
}

variable "name2" {
	default = "test2"
}

variable "zone2" {
	default = "europe-west2-c"
}

variable "machine_type2" {
	default = "n1-standard-1"
}

variable "image_project2" {
	default = "ubuntu-os-cloud"
}

variable "image2" {
	default = "debian-9-stretch-v20190618"
}

variable "network2" {
	default = "default"
}

variable "ssh_user2" {
	default = "terraform"
}

variable "public_key2" {
	default = "~/.ssh/id_rsa.pub"
}

variable "private_key2" {
	default = "~/.ssh/id_rsa"
}

variable "package_manager2" {
	default = "apt"
}

variable "update_packages2" {
	default = {
		"apt" = "sudo apt update"
		"yum" = "sudo yum update -y"
	}
}

variable "packages2" {
	default = [
		"wget",
		"unzip"
	]
}

variable "install_packages2" {
	default = {
		"yum" = "sudo yum install -y",
		"apt" = "sudo apt install -y"
	}
}

variable "scripts2" {
	default = []
}

variable "allowed_ports2" {
	default = ["22",
		   "8080",
		   "27017",
		   "4200"
		  ]
}











  
