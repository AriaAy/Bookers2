class ApplicationController < ActionController::Base

before_action :authenticate_user!, except: [:top, :about]
before_action :is_matching_login_user, only: [:edit, :update]
before_action :configure_permitted_parameters, if: :devise_controller?
  
  # サインイン後users_idページをページ移動先に設定
  def after_sign_in_path_for(resource)
    flash[:notice] = "Signed in successfully."
    user_path(current_user)
  end
  
  # サインアウト後topページをページ移動先に設定
  def after_sign_out_path_for(resource)
    flash[:notice] = "Signed out successfully."
    root_path(resource)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
