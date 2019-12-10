require 'themoviedb'

class TmdbService < ApplicationRecord
  # setup API key
  Tmdb::Api.key("#{ENV['API_KEY']}")

  # setup default language
  Tmdb::Api.language("en")

  def get_popular_shows
    Tmdb::TV.popular
  end

  def search(name)
    Tmdb::TV.find(name)
  end

  def get_details(id)
    Tmdb::TV.detail(id)
  end

  def get_images(id)
    Tmdb::TV.images(id)
  end
end