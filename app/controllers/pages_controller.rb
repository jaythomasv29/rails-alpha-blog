class PagesController < ApplicationController
   def home # home (root) set in routes
    redirect_to articles_path if logged_in? # the root of a logged_in user is now articles
  end

  def about # from routes /about pages#about =>  about controller to serve about.html.erb
  end
end
