class ApplicationController < ActionController::Base
	  # before_action :authenticate_user!
   def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|

  user_params.permit({ roles: [] }, :email, :password, :password_confirmation)

  end



  devise_parameter_sanitizer.permit(:account_update) do |user_params|

  user_params.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password)

  end
  end

end
