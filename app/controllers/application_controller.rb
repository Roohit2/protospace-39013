class ApplicationController < ActionController::Base
#ログインの可否で分岐
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

#共通処理
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end

end
