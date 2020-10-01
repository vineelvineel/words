require 'rails_helper'

RSpec.describe WordsController do
  describe "GET index" do
    before(:each) do
      @random_words = FactoryBot.create_list(:random_word, 5)
      get :index
    end

    it "returns success(200) response" do
      expect(response).to have_http_status(200)
    end

    it "renders index template" do
      expect(response).to render_template("index")
    end

    it "generates random word" do
      expect(assigns[:random_word]).not_to eq nil
    end
  end
end
