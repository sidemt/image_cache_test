class SessionsController < ApplicationController
  def new
  end
  
  def create
    # User login
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # log in
      log_in user
      # Redirect to user information page or 
      # the original page user was trying to access
      redirect_back_or user
    else
      # Show error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
