class WelcomeController < ApplicationController
  def index
    @popular_shows = Tmdb::TV.popular
  end

end
