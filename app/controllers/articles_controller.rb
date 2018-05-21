class ArticlesController < ApplicationController

  before_action :authenticate_user!
  before_action :find_articles, only: [:index, :destroy]
  before_action :find_article, only: [:show, :edit, :update, :destroy] 
   

  def index; end

  def edit; end

  def update
    if @article.update article_params
      redirect_to @article
    else
      render 'edit'
    end
  end

  def new; end

  def show; end

  def create
    @article = Article.new article_params
    if @article.save
      flash[:success] = "Article successfully created"
      redirect_to @article
    else
      render 'new'
    end
  end

  def destroy
    if @article.destroy
      render 'index'
    else
      redirect_to @article
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def find_article
    if Article.exists?(params[:id])
      @article = Article.find(params[:id])
    else
      render 'new'
    end
  end

  def find_articles
    @articles = Article.all
  end
end
