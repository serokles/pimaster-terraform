variable "vsphere_server" {
    description = "vsphere server for the environment"
    default = "vcsa.houseofbears.co.uk"
}

variable "vsphere_user" {
    description = "vsphere server for the environment"
    default = "administrator@vsphere.local"
}

variable "vsphere_password" {
    description = "vsphere server password for the environment"
    default = "VMware1!"
}

variable "hosts" {
  default = [
    "vesxi1.houseofbears.co.uk",
    "vesxi2.houseofbears.co.uk",
    "vesxi3.houseofbears.co.uk",
  ]
}