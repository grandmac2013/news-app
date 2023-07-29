class Article < ApplicationRecord
    belongs_to :admin_user
    belongs_to: category
end
