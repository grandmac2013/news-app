class AddAuthorToArticles < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :articles, :admin_users, column: :author_id, validate: false
  end
end
