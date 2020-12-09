class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase) # checks if user is in database
    if user && user.authenticate(params[:session][:password]) # if user is verified
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully as #{user.email}"
      redirect_to user
    else # if user enters invalid authentication
      flash.now[:alert] = "Invalid"
      render 'new'
    end


  end

  def destroy
    session[:user_id] = nil # logout user by unsetting session
    flash[:notice] = "Logged out"
    redirect_to root_path
  end
end