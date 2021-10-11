resource "aci_rest" "fabricSpNodePGrp" {
  dn         = "uni/fabric/funcprof/spnodepgrp-${var.name}"
  class_name = "fabricSpNodePGrp"
  content = {
    name = var.name
  }
}

resource "aci_rest" "fabricRsPsuInstPol" {
  dn         = "${aci_rest.fabricSpNodePGrp.dn}/rspsuInstPol"
  class_name = "fabricRsPsuInstPol"
  content = {
    tnPsuInstPolName = var.psu_policy
  }
}

resource "aci_rest" "fabricRsNodeCtrl" {
  dn         = "${aci_rest.fabricSpNodePGrp.dn}/rsnodeCtrl"
  class_name = "fabricRsNodeCtrl"
  content = {
    tnFabricNodeControlName = var.node_control_policy
  }
}
