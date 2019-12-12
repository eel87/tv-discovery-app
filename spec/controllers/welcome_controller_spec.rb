require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  let(:service) { TmdbService.new }
  shows = service.get_popular_shows

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
