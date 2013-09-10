class ApplicationController < ActionController::Base

  protect_from_forgery

	private


  def authorize
    redirect_to :root, notice: 'Not authorized' unless logged_in?
  end
  helper_method :authorize

	def current_user
	  @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
	end
	helper_method :current_user

  def logged_in?
    if current_user.nil?
      return false
    else
      return true
    end
  end
  helper_method :logged_in?

end
