class ShowsController < ApplicationController
  def index
    @search_results = Tmdb::TV.find(params[:name])
  end

  def show
    @show = Tmdb::TV.detail(params[:id])
    @images = Tmdb::TV.images(params[:id])
    
    @config = Tmdb::Configuration.new
  end
end
