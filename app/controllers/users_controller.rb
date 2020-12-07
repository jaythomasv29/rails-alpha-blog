class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Sign up successful"
      redirect_to articles_path
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User account updated successfully"
      redirect_to articles_path
    else
      render "edit"
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params # private method to white list params
    params.require(:user).permit(:username, :email, :password)
  end
end
