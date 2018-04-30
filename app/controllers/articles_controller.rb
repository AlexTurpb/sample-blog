class ArticlesController < ApplicationController

  def new
  end

  def create
    @article = Article.new params_article
    @article.save
  end

  private

  def params_article
    params.require(:article).permit(:title, :text)
  end

end
