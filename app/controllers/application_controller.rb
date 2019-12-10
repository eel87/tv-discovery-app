require 'themoviedb'

class ApplicationController < ActionController::Base
  before_action :set_config, :set_connection

  def set_config
    @config = Tmdb::Configuration.new
  end

  def set_connection
    @tmdb = TmdbService.new
  end
end
