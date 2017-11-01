require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Llevamecontigo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    if Rails.env.production?
    	#Production
    	config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    else
    	#Develoment
    	config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    end
	config.action_mailer.raise_delivery_errors = true
	config.action_mailer.perform_deliveries = true
	config.action_mailer.default :charset => "utf-8"

	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
	  address:              'smtp.gmail.com',
	  port:                 587,
	  authentication:       'plain',
	  domain:               'gmail.com',
	  user_name:            ENV['gmail_user'],
	  password:             ENV['gmail_pass'],
	  enable_starttls_auto: true  }
  end
end
