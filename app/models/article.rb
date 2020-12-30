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
    validates :contens, presence: true

    def display_created_at
        I18n.l(self.created_at, format: :default)
      end
end
