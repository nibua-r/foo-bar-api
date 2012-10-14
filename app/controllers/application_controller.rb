require 'dm-rails/middleware/identity_map'

class ApplicationController < ActionController::API
  use Rails::DataMapper::Middleware::IdentityMap

  # Enable parameter wrapping for JSON.
  # See https://github.com/spastorino/rails-api/issues/33
  include ActionController::ParamsWrapper
  wrap_parameters :format => :json
end
