class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_useraccount!
  before_action :configure_permitted_parameters, if: :devise_controller?


   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up).push(:accountname, :color, :avatar)
    #devise_parameter_sanitizer.for(:sign_up) << :avatar
    ## To permit attributes while editing a registration 
    #devise_parameter_sanitizer.for(:account_update) << :avatar	
   end
end
