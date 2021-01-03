# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  contens    :content
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
class Article < ApplicationRecord
    validates :title, presence: true
    validates :title, length: { minimum: 2 , maximum: 100 }
    validates :title, format: { with: /\A(?!\@)/ }

    validates :contens, presence: true
    validates :contens, length: { minimum: 10 }
    validates :contens, uniqueness: true

    validate :validate_title_contens_length

    belongs_to :user

    def display_created_at
        I18n.l(self.created_at, format: :default)
    end

    def author_name
      user.display_name
    end

    private
    def validate_title_contens_length
      char_count = self.title.length + self.contens.length
      unless char_count > 100
        errors.add(:contens, '100文字いじょうで！')
      end
    end
end
