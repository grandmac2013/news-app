class CategoriesController < ApplicationController

  def show
    @category = Category.find_by(id: params[:id])
    @news = Article.where(category_id: @category.id) if @category.present?
  end
end
