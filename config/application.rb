require_relative 'boot'
require 'rails/all'
require 'themoviedb'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TvDiscoveryApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end

  class Tmbd 
    def initialize
      Tmdb::Api.key("fb6a1d3f38c3d97f67df6d141f936f29")
    end
  end
end
