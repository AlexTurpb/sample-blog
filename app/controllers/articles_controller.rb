class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update params_article
  end

  def new
  end

  def show
    if Article.exists?(params[:id])
      @article = Article.find(params[:id])
      render action: 'show'
    else
      render action: 'new'
    end 
  end

  def create
    @article = Article.new params_article
    if @article.valid? 
      @article.save
    else
      render action: 'new'
    end
  end

  private

  def params_article
    params.require(:article).permit(:title, :text)
  end
end
