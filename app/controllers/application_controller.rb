class ApplicationController < ActionController::Base
  include Devise::Controllers::Helpers

  # def after_sign_in_path_for(resource)
  #   return unless resource.is_a?(User)

  #   # groups_path
  # end
end
