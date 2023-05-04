class ApplicationController < ActionController::Base
  
before_action :configure_permitted_parameters, if: :devise_controller?
  
  # サインイン後users_idページをページ移動先に設定
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
  
  # サインアウト後topページをページ移動先に設定
  def after_sign_out_path_for(resource)
    root_path(resource)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
