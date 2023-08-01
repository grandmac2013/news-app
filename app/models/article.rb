class Article < ApplicationRecord
    belongs_to :admin_user, class_name: 'AdminUser', foreign_key: 'author_id'
    belongs_to :category

    mount_uploader :image, ImageUploader

    validates :title, presence: true, length: { minimum: 3 }

    enum status: { not_published: 0, published: 1 }

    def self.ransackable_attributes(auth_object = nil)
        ["author_id", "author_name", "category_id", "content", "created_at", "id", "image", "status", "title", "updated_at"]
      end

      def self.ransackable_associations(auth_object = nil)
        ["admin_user", "category"]
      end
end
