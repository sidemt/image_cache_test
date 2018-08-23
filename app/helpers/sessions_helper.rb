module SessionsHelper
  
  # Log in with the given user
  def log_in(user)
    session[:user_id] = user.id # Places a temp cookie on the user's browser
  end
  
  # Return the currently logged in user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  # Return true if the user is logged in, otherwise false
  def logged_in?
    !current_user.nil?
  end
end
