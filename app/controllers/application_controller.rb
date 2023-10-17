class ApplicationController < ActionController::Base
  include Devise::Controllers::Helpers

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      categories_path
    else
      root_path # Or any other fallback path
    end
  end

  def after_sign_out_path_for(resource)
    if resource.is_a?(User)
      splash_path
    else
      root_path # Or any other fallback path
    end
  end
end
