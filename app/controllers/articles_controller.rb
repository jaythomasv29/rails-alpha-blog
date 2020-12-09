class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index] # require user to be logged in to perform actions except for certain ones (show, index)
  before_action :require_same_user, only: [:edit, :update, :destroy] # require user 
  def show # controller looks for show.html.erb
  end

  def index # controller looks for index.html.erb
    # @articles = Article.all
    @articles = Article.reorder("created_at DESC").paginate(page: params[:page], per_page: 3)
    
  end

 def new
    @article = Article.new
  end

  def edit
  end 

  def create
    # params[:article]["title"]
    # @article = Article.new("title": params[:article]["title"], "description": params[:article]["description"])
    @article = Article.new(article_params) # require the key of article and permit :title and :description
    @article.user = current_user
    if @article.save # if the article was successfully saved
      flash[:notice] = "Post was successfully created." # flash helper method
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
  
    @article.destroy
    redirect_to @article
  end
 
  private # anything below it is a private method
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params # gets the params 
    params.require(:article).permit(:title, :description, :price)
  end

end