class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:show, :update, :edit]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  def show
    # uses before_action to get param
    @articles = @user.articles.paginate(page: params[:page], per_page: 3)
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 3)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Sign up successful as #{@user.username}"
      redirect_to @user
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
      redirect_to @user
    else
      render "edit"
    end
  end
  
  def destroy
    @user.destroy # destroys the user
    session[:user_id] = nil # unset the session from the user id
    flash[:alert] = "Account deleted"
    redirect_to root_path
  end

  private

  
  def set_user
    @user = User.find(params[:id])
  end

  def user_params # private method to white list params
    params.require(:user).permit(:username, :email, :password)
  end

  def require_same_user
    if current_user != @user
      flash[:alert] = "You do not have rights to modify other accounts"
      redirect_to @user
    end
  end
end
