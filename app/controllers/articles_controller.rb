class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
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

  def edit
  end

  def show
  end
end
