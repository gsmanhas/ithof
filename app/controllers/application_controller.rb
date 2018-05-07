class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
protected
 
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name])
   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name,:current_password, :last_name) }
  
end
module CurrentUser
  def self.included(base)
    base.send :helper_method, :current_user
  end
end
end
