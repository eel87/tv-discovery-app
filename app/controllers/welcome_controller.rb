class WelcomeController < ApplicationController
  def index
    @popular_shows = @tmdb.get_popular_shows
  end
end
