variable "cloud_guard_targets" {
  description = <<EOT
Map of cloud_guard_targets, attributes below
Required:
    - compartment_id
    - display_name
    - target_resource_id
    - target_resource_type
Optional:
    - defined_tags
    - description
    - freeform_tags
    - state
    - target_detector_recipes (block):
        - detector_recipe_id (required)
        - detector_rules (optional, block):
            - details (required, block):
                - condition_groups (optional, block):
                    - compartment_id (required)
                    - condition (required)
            - detector_rule_id (required)
    - target_responder_recipes (block):
        - responder_recipe_id (required)
        - responder_rules (optional, block):
            - details (required, block):
                - condition (optional)
                - configurations (optional, block):
                    - config_key (required)
                    - name (required)
                    - value (required)
                - mode (optional)
            - responder_rule_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id       = string
    display_name         = string
    target_resource_id   = string
    target_resource_type = string
    defined_tags         = optional(map(string))
    description          = optional(string)
    freeform_tags        = optional(map(string))
    state                = optional(string)
    target_detector_recipes = optional(list(object({
      detector_recipe_id = string
      detector_rules = optional(list(object({
        details = object({
          condition_groups = optional(list(object({
            compartment_id = string
            condition      = string
          })))
        })
        detector_rule_id = string
      })))
    })))
    target_responder_recipes = optional(list(object({
      responder_recipe_id = string
      responder_rules = optional(list(object({
        details = object({
          condition = optional(string)
          configurations = optional(list(object({
            config_key = string
            name       = string
            value      = string
          })))
          mode = optional(string)
        })
        responder_rule_id = string
      })))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

