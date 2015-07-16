class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    if current_user.nil?
      redirect_to '/'
      return
    end
    # check if current user is admin
    unless current_user.admin?
      # if current_user is not admin redirect to some route
      redirect_to '/'
    end
  end

end
