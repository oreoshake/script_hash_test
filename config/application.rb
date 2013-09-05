require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module ScriptHash
  class Application < Rails::Application
    config.action_dispatch.default_headers.clear
  end
end
