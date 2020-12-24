class Article < ApplicationRecord
    validates :title, presence: true
    validates :contens, presence: true
end
