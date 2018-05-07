class ArticlesController < ApplicationController

  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def edit
  end

  def update
    if @article.update article_params
      redirect_to @article
    else
      render 'edit'
    end
  end

  def new
  end

  def show
  end

  def create
    @article = Article.new article_params
    if @article.save
      redirect_to @article
    else
      render 'new'
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
end
