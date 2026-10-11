resource "oci_cloud_guard_target" "cloud_guard_targets" {
  for_each = var.cloud_guard_targets

  compartment_id       = each.value.compartment_id
  display_name         = each.value.display_name
  target_resource_id   = each.value.target_resource_id
  target_resource_type = each.value.target_resource_type
  defined_tags         = each.value.defined_tags
  description          = each.value.description
  freeform_tags        = each.value.freeform_tags
  state                = each.value.state

  dynamic "target_detector_recipes" {
    for_each = each.value.target_detector_recipes != null ? each.value.target_detector_recipes : []
    content {
      detector_recipe_id = target_detector_recipes.value.detector_recipe_id
      dynamic "detector_rules" {
        for_each = target_detector_recipes.value.detector_rules != null ? target_detector_recipes.value.detector_rules : []
        content {
          details {
            dynamic "condition_groups" {
              for_each = detector_rules.value.details.condition_groups != null ? detector_rules.value.details.condition_groups : []
              content {
                compartment_id = condition_groups.value.compartment_id
                condition      = condition_groups.value.condition
              }
            }
          }
          detector_rule_id = detector_rules.value.detector_rule_id
        }
      }
    }
  }

  dynamic "target_responder_recipes" {
    for_each = each.value.target_responder_recipes != null ? each.value.target_responder_recipes : []
    content {
      responder_recipe_id = target_responder_recipes.value.responder_recipe_id
      dynamic "responder_rules" {
        for_each = target_responder_recipes.value.responder_rules != null ? target_responder_recipes.value.responder_rules : []
        content {
          details {
            condition = responder_rules.value.details.condition
            dynamic "configurations" {
              for_each = responder_rules.value.details.configurations != null ? responder_rules.value.details.configurations : []
              content {
                config_key = configurations.value.config_key
                name       = configurations.value.name
                value      = configurations.value.value
              }
            }
            mode = responder_rules.value.details.mode
          }
          responder_rule_id = responder_rules.value.responder_rule_id
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

