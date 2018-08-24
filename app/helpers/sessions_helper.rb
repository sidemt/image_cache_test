module SessionsHelper
  
  # Log in with the given user
  def log_in(user)
    session[:user_id] = user.id # Places a temp cookie on the user's browser
  end
  
  # Returns true if the given user is the currently logged in user
  def current_user?(user)
    user == current_user
  end
  
  # Returns the currently logged in user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  # Returns true if the user is logged in, otherwise false
  def logged_in?
    !current_user.nil?
  end
  
  # Log out
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
