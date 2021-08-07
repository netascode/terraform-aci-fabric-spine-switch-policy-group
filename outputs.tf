output "dn" {
  value       = aci_rest.fabricSpNodePGrp.id
  description = "Distinguished name of `fabricSpNodePGrp` object."
}

output "name" {
  value       = aci_rest.fabricSpNodePGrp.content.name
  description = "Spine switch policy group name."
}
