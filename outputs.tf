output "cloud_guard_targets_id" {
  description = "Map of id values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no id are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_guard_targets_compartment_id" {
  description = "Map of compartment_id values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no compartment_id are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "cloud_guard_targets_defined_tags" {
  description = "Map of defined_tags values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no defined_tags are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "cloud_guard_targets_description" {
  description = "Map of description values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no description are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud_guard_targets_display_name" {
  description = "Map of display_name values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no display_name are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_guard_targets_freeform_tags" {
  description = "Map of freeform_tags values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "cloud_guard_targets_inherited_by_compartments" {
  description = "Map of inherited_by_compartments values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no inherited_by_compartments are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.inherited_by_compartments if v.inherited_by_compartments != null && length(v.inherited_by_compartments) > 0 }
}
output "cloud_guard_targets_lifecyle_details" {
  description = "Map of lifecyle_details values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no lifecyle_details are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.lifecyle_details if v.lifecyle_details != null && length(v.lifecyle_details) > 0 }
}
output "cloud_guard_targets_recipe_count" {
  description = "Map of recipe_count values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no recipe_count are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.recipe_count if v.recipe_count != null }
}
output "cloud_guard_targets_state" {
  description = "Map of state values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no state are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloud_guard_targets_system_tags" {
  description = "Map of system_tags values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no system_tags are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "cloud_guard_targets_target_details" {
  description = "Map of target_details values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no target_details are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.target_details if v.target_details != null && length(v.target_details) > 0 }
}
output "cloud_guard_targets_target_detector_recipes" {
  description = "Map of target_detector_recipes values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no target_detector_recipes are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.target_detector_recipes if v.target_detector_recipes != null && length(v.target_detector_recipes) > 0 }
}
output "cloud_guard_targets_target_resource_id" {
  description = "Map of target_resource_id values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no target_resource_id are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}
output "cloud_guard_targets_target_resource_type" {
  description = "Map of target_resource_type values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no target_resource_type are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.target_resource_type if v.target_resource_type != null && length(v.target_resource_type) > 0 }
}
output "cloud_guard_targets_target_responder_recipes" {
  description = "Map of target_responder_recipes values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no target_responder_recipes are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.target_responder_recipes if v.target_responder_recipes != null && length(v.target_responder_recipes) > 0 }
}
output "cloud_guard_targets_time_created" {
  description = "Map of time_created values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no time_created are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "cloud_guard_targets_time_updated" {
  description = "Map of time_updated values across all cloud_guard_targets, keyed the same as var.cloud_guard_targets except keys with no time_updated are omitted"
  value       = { for k, v in oci_cloud_guard_target.cloud_guard_targets : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

