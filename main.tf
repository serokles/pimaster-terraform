provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_datacenter" "prod_datacenter" {
  name       = "HomeLab"
}

data "vsphere_datacenter" "dc" {
  name       = "HomeLab"
}

resource "vsphere_folder" "folder" {
  path          = "terraform-test-folder"
  type          = "host"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

