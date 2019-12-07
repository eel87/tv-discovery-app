class WelcomeController < ApplicationController
  def index
    @popular_shows = Tmdb::TV.popular
  end

  def search(name)
    
    @results = Tmdb::TV.find(params[:name])
  end
end
