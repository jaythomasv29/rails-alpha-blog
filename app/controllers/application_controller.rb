class ApplicationController < ActionController::Base
  
  helper_method :current_user, :logged_in? # makes this available in all controllers, and helper methods
  def current_user # returns details of user who is logged in
    @current_user ||= User.find(session[:user_id]) if session[:user_id] # gets user object if it exists  
  end

   def logged_in? # returns boolean if current_user method has a memoization
    !!current_user
  end

  def require_user #require user method available to all controllers
    if !logged_in?
      flash[:alert] = "Please login or create an account first"
      redirect_to signup_path
    end
  end

  def require_same_user # require user to be the same when editing their own
    if current_user != @article.user && !curent_user.admin # if current user is not admin, AND it is not the current user who owns the article
      flash[:alert] = "You do not have rights to modify other posts"
      redirect_to @article
    end
  end
end
