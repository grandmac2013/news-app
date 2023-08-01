class NewsController < ApplicationController

  def index
    @news = Article.limit(3)
    @categories = Category.where("categories.name is not null")
    @api_news = ApiNews.new("Api News").fetch_news
    @image = "https://assets-prd.punchdrink.com/wp-content/uploads/2019/10/23100724/Article-Fifty-Fifty-50-50-Martini-Really-a-Martini-Cocktail.jpg"
  end

  def all_news
    @news = params[:search].present? ? Article.joins(:category).where("categories.name ilike ? or articles.title ilike ?","%#{params[:search]}%","%#{params[:search]}%") : Article.all
  end

end
