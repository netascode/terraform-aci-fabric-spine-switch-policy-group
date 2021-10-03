<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-fabric-spine-switch-policy-group/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-fabric-spine-switch-policy-group/actions/workflows/test.yml)

# Terraform ACI Fabric Spine Switch Policy Group Module

Manages ACI Fabric Spine Switch Policy Group Module

Location in GUI:
`Fabric` » `Fabric Policies` » `Switches` » `Spine Switches` » `Policy Groups`

## Examples

```hcl
module "aci_fabric_spine_switch_policy_group" {
  source  = "netascode/fabric-spine-switch-policy-group/aci"
  version = ">= 0.0.1"

  name                = "PG1"
  psu_policy          = "PSU1"
  node_control_policy = "NC1"
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 0.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Spine switch policy group name. | `string` | n/a | yes |
| <a name="input_psu_policy"></a> [psu\_policy](#input\_psu\_policy) | PSU policy name. | `string` | `""` | no |
| <a name="input_node_control_policy"></a> [node\_control\_policy](#input\_node\_control\_policy) | Node control policy name. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `fabricSpNodePGrp` object. |
| <a name="output_name"></a> [name](#output\_name) | Spine switch policy group name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.fabricRsNodeCtrl](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
| [aci_rest.fabricRsPsuInstPol](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
| [aci_rest.fabricSpNodePGrp](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->