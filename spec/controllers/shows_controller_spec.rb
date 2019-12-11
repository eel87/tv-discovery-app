require 'rails_helper'

RSpec.describe ShowsController, type: :controller do
  let(:service) { TmdbService.new }

  describe "GET index" do
    it "returns http success" do
      get :index, params: { name: "Friends" }
      expect(response).to have_http_status(:success)
    end

    it "renders the index view" do
      get :index, params: {name: "Bob"}
      expect(response).to render_template(:index)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, params: { id: rand(0..200) }
      expect(response).to have_http_status(:success)
    end

    it "renders the show view" do
      get :show, params: { id: rand(0..200) }
      expect(response).to render_template(:show)
    end
  end
end


