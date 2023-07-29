class AddAuthorToCategories < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :admin_users, column: :author_id, validate: false
  end
end
