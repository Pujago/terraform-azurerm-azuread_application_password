resource "time_rotating" "rotate" {
  rotation_days = 7
}

module "azuread_app_password" {
  source                = "Pujago/azuread_application_password/azurerm"
  application_object_id = "5e1c3487-dhe2-49e5-b2eb-b6eff567245d"
  display_name          = "application password"

  # One may set an exact end date for the password using:
  # end_date = "2023-01-01T01:02:03Z"

  # One may use a relative end date using:
  end_date_relative = "240h"

  # Force re-creation of the password when a key value changes, for example when a time index expires
  # rotate_when_changed = {
  #   rotation = time_rotating.rotate.id
  # }

  # One may choose a start date for the password using:
  # start_date = "2023-01-01T01:02:03Z"
}
