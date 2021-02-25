data "vsphere_datacenter" "dc" {
  name       = "HomeLab"
}

data "vsphere_host" "host" {
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}


data "vsphere_host" "hosts" {
  count         = length(var.hosts)
  name          = var.hosts[count.index]
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}