class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    # Add additional user devise fields here eg: keys: [:name, :phone]
    devise_parameter_sanitizer.permit(:sign_up, keys: [])
    devise_parameter_sanitizer.permit(:sign_in, keys: [])
  end

end
