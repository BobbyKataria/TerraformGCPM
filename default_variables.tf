variable "project" {
	default = "central-phalanx-246109"
}

variable "name" {
	default = "test"
}

variable "zone" {
	default = "europe-west2-c"
}

variable "machine_type" {
	default = "n1-standard-1"
}

variable "image_project" {
	default = "ubuntu-os-cloud"
}

variable "image" {
	default = "debian-9-stretch-v20190618"
}

variable "network" {
	default = "default"
}

variable "ssh_user" {
	default = "terraform"
}

variable "public_key" {
	default = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
	default = "~/.ssh/id_rsa"
}

variable "package_manager" {
	default = "apt"
}

variable "update_packages" {
	default = {
		"apt" = "yes | sudo apt update -y"
		"yum" = "yes | sudo yum update -y"
	}
}

variable "packages" {
	default = [
		"wget",
		"unzip"
	]
}

variable "install_packages" {
	default = {
		"yum" = "sudo yum install -y",
		"apt" = "sudo apt install -y"
	}
}

variable "scripts" {
	default = []
}

variable "allowed_ports" {
	default = ["22",
		   "8080",
		   "27017",
		   "4200"
		  ]
}











  
