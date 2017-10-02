provider "ibm" {
  bluemix_api_key = "${var.bluemix_api_key}"
}

data "ibm_org" "org" {
  org = "${var.org}"
}

data "ibm_space" "space" {
  org   = "${var.org}"
  space = "${var.space}"
}

data "ibm_account" "account" {
  org_guid = "${data.ibm_org.org.id}"
}

resource "random_id" "name" {
  byte_length = 4
}

variable "bluemix_api_key" {}
variable "org" {
   default = "rachael.graham@ibm.com"
}
  
variable "space" {
  default = "dev"
}

