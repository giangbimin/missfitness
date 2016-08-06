class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #include CanCan::ControllerAdditions
  #-------------------------------cancan redirect to home if AccessDenied---------------------------
  rescue_from CanCan::AccessDenied do |exception|
    #redirect_to root_path, :alert => exception.message
    flash[:error] = "bạn không phải là quản trị viên"
    redirect_to '/', :alert => exception.message
  end
  #
  #------------------------------------------------------------
  ## your unmodified current_user implementation
  #def current_user
   # @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #end

  #def is_an_admin?
   # if current_user && current_user.admin?
  #end
  #------------------------------------------------------------------------
end
