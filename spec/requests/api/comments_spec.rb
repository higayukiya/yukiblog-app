require 'rails_helper'

RSpec.describe 'Api::Comments', type: :request do
  let!(:user) { create(:user) }
  let!(:article) { create(:article, user: user) }
  let!(:comments) { create_list(:comment, 3, article: article) }

  describe 'GET /api/comments' do
    it '200 Status' do
      get api_comments_path(article_id: article.id)
      expect(response).to have_http_status(200)

      body = JSON.parse(response.body)
      
      expect(body.length).to eq 3
      expect(body[0]['contens']).to eq comments.first.contens
      expect(body[1]['contens']).to eq comments.second.contens
      expect(body[2]['contens']).to eq comments.third.contens
    end
  end
end
