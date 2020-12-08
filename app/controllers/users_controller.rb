class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def show
    # uses before_action to get param
    @articles = @user.articles
  end

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
    # uses before_action to get param
  end

  def update
    # uses before_action to get param
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
