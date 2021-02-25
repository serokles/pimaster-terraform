data "vsphere_datacenter" "dc" {
  name       = "HomeLab"
}

data "vsphere_host" "host" {
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}