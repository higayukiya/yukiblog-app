# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  contens    :content
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Article < ApplicationRecord
    validates :title, presence: true
    validates :title, length: { minimum: 2 , maximum: 100 }
    validates :title, format: { with: /\A(?!\@)/ }

    validates :contens, presence: true
    validates :contens, length: { minimum: 10 }
    validates :contens, uniqueness: true

    validate :validate_title_contens_length

    def display_created_at
        I18n.l(self.created_at, format: :default)
      end

    private
    def validate_title_contens_length
      char_count = self.title.length + self.contens.length
      unless char_count > 100
        errors.add(:contens, '100文字いじょうで！')
      end
    end
end
