resource "vsphere_datacenter" "prod_datacenter" {
  name       = "HomeLab"
}

resource "vsphere_folder" "folder" {
  path          = "terraform-test-folder"
  type          = "host"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

