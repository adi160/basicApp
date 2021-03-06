class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :current_article

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in first "
      redirect_to root_path
    end
  end

end
