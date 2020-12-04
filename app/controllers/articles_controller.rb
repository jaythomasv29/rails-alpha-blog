class ArticlesController < ApplicationController
  def show # controller looks for show.html.erb
    # byebug
    @article = Article.find(params[:id]) # gets params from hash to retrieve article
    # @article = Article.all
  end
  def index # controller looks for index.html.erb
    @articles = Article.all
  end

 def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end 

  def create
    # params[:article]["title"]
    # @article = Article.new("title": params[:article]["title"], "description": params[:article]["description"])
    @article = Article.new(params.require(:article).permit(:title, :description)) # require the key of article and permit :title and :description
    if @article.save # if the article was successfully saved
      flash[:notice] = "Post was successfully created." # flash helper method
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end
 
end