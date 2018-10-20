class SessionController < ApplicationController
  def new  #no action, but view page.  Login form.
  end

  def create
    #login in submit sends here.  Will create a user_id to session hash, which will be used for authentication and authorization during session.
    user = User.find_by :email => params[:email]  #set user checking email field
    if user.present? && user.authenticate(params[:password])  #if user present and password correct (using bcrypt's authenticate method)
      session[:user_id] = user.id  #set user.id in session hash
      flash[:notice]  = "Session created"
      redirect_to user_path(user.id)
    else   #user cannot be authenticated
      flash[:error] = "User could not be found."
      redirect_to login_path
    end
  end

  def destroy  #when user logs out, session[:user_id] set back to nil.
    session[:user_id] = nil
    redirect_to root_path
  end
end
