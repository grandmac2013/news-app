class Category < ApplicationRecord

    has_many :articles
    belongs_to :admin_user , class_name: 'AdminUser', foreign_key: 'author_id'

    def self.ransackable_attributes(auth_object = nil)
        ["author_id", "created_at", "description", "id", "name", "updated_at"]
      end

      def self.ransackable_associations(auth_object = nil)
        ["articles"]
      end
end
