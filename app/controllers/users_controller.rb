class UsersController < ApplicationController
before_action :authenticate_user!
before_action :configure_permitted_parameters, if: :devise_controller? 
protected

  def index
  end
end
