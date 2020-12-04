class ArticlesController < ApplicationController
  def show # controller looks for show.html.erb
    # byebug
    @article = Article.find(params[:id]) # gets params from hash to retrieve article
    # @article = Article.all
  end
  def index # controller looks for index.html.erb
    @articles = Article.all
  end
end