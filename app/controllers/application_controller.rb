class ApplicationController < ActionController::Base
  before_action :set_config

  def set_config
    @config = Tmdb::Configuration.new
  end
end
