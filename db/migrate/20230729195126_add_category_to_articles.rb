class AddCategoryToArticles < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :articles, :categories, column: :category_id, validate: false
  end
end
