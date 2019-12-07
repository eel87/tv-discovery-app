class ShowsController < ApplicationController
  def search(name)
    results = Tmdb::TV.find(name)
    
  end
  
  def results
  end

  
end
