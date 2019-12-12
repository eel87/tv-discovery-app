class ShowsController < ApplicationController
  def index
    @search_results = @tmdb.search(params[:name])
  end

  def show
    @show = @tmdb.get_details(params[:id])
    @images = @tmdb.get_images(params[:id])
    @cast = @tmdb.get_cast(params[:id])
  end
end
