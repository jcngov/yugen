class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    helper_method :current_user

    def current_user
      # reset_session
      @current_user ||= User.find(session[:current_user_id]) if session[:current_user_id]
    end
end
