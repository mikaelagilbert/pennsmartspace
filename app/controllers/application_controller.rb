class ApplicationController < ActionController::Base

  protect_from_forgery unless: -> { request.format.json? }

  helper_method def logged_in?
    session[:user_id]
  end

  helper_method def current_user
    @current_user ||= User.find(session[:user_id]) if logged_in?
  end

  helper_method def is_admin?
    if logged_in?
      current_user.is_admin 
    else
      false
    end
  end
end
