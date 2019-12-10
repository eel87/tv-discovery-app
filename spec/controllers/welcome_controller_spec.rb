require_relative '../spec_helper'
require_relative '../../app/controllers/welcome_controller'
require 'themoviedb'

RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("welcome/index")
    end
  end
end
