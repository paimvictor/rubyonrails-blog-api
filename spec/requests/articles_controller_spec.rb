require 'rails_helper'

RSpec.describe "ArticlesControllers", type: :request do
  describe "GET /articles" do
    before do
      create_list(:article, 3)
    end
    it "returns http success" do
      get "/articles"
      expect(response).to have_http_status(:success)
    end
    it "returns all articles" do
      get "/articles"
      expect(JSON.parse(response.body).size).to eq(3)
    end
  end
end
