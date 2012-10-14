# Be sure to restart your server when you modify this file.
#
# This file contains settings for ActionController::ParamsWrapper which
# is enabled by default.


# See https://github.com/spastorino/rails-api/issues/33 on wrap_parameters.
# Parameter wrapping is enabled by including the ParamsWrapper module to the ApplicationController.
# Enable parameter wrapping for JSON. You can disable this by setting :format to an empty array.
# ActiveSupport.on_load(:action_controller) do
#   wrap_parameters format: [:json]
# end

# Disable root element in JSON by default.
ActiveSupport.on_load(:active_record) do
  self.include_root_in_json = false
end
