class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to user_signed_in? ? user_path(current_user) : root_path, alert: "You are not authorized to perform this action."
  end

  def after_sign_in_path_for(resource)
    home_path
  end
end
