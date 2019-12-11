require 'rails_helper'

RSpec.describe TmdbService, type: :model do
  
  let(:service) { TmdbService.new }
  let(:random) { rand(12) }

  it "gets the list of popular shows" do
    expect(service.get_popular_shows).to_not be_nil
  end

  it "gets the list of popular shows equal to Tmdb popular shows" do
    shows = service.get_popular_shows
    tmdbshows = Tmdb::TV.popular
    expect(shows.map(&:name)).to eq(tmdbshows.map(&:name))
  end

  it "returns results based on search by name" do
    expect(service.search("Friends")).to_not be_nil
  end

  it "returns results equal to Tmdb results" do
    app_results = service.search("Friends")
    tmdb_results = Tmdb::TV.search("Friends")
    expect(app_results.map(&:name)).to eq(tmdb_results.map(&:name))
  end
    
  it "gets details of show based on id" do
    expect(service.get_details(random)).to_not be_nil
  end

  it "gets details of show equal to Tmdb details" do
    expect(service.get_details(random)).to eq(Tmdb::TV.detail(random))
  end
end
