class ShowsController < ApplicationController
  def index
    @search_results = Tmdb::TV.find(params[:name])
  end

  def show
    @search_results
  end
end
