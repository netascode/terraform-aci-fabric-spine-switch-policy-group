terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name = "POL1"
}

data "aci_rest" "fabricSpNodePGrp" {
  dn = "uni/fabric/funcprof/spnodepgrp-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "fabricSpNodePGrp" {
  component = "fabricSpNodePGrp"

  equal "name" {
    description = "name"
    got         = data.aci_rest.fabricSpNodePGrp.content.name
    want        = module.main.name
  }
}
