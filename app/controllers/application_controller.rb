class ApplicationController < ActionController::Base
  def after_sign_out_path(resource_or_scope)
    if current_user
      request.referrer
    else
      root_path
    end
  end
end
