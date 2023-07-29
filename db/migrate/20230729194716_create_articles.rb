class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.string :title
      t.string :content
      t.string :image
      t.integer :status
      t.string :author_name
      t.integer :author_id

      t.timestamps
    end
  end
end
