class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  after_filter :store_location

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

  def current_user
    super
  end

  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end

  def after_sign_in_path_for(resource)
    session[:user_return_to] || session[:previous_url] || root_path
  end

end
