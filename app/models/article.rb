class Article < ApplicationRecord
    validates :title, presence: true
    validates :contens, presence: true

    def display_created_at
        I18n.l(self.created_at, format: :default)
      end
end
