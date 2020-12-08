class ArticlesController < ApplicationController
  
  def new
    @article=Article.new
  end

  def create
    @article=Article.create(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article
  end

  def edit
  end

  def update
  end

  def destroy
    @article=Article.find(params[:id])
    @article.destroy
  end

  def show
    @article=Article.find(params[:id])
  end

  def index
    @article=Article.all
    
  end
end
