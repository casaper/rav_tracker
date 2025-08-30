source 'https://rubygems.org'

gem 'rails', '~> 8.0.0'

gem 'bcrypt' # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bootsnap', require: false
gem 'image_processing' # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'importmap-rails' # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'jbuilder'
gem 'kamal', require: false
gem 'pg'
gem 'propshaft' # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'puma' # Use the Puma web server [https://github.com/puma/puma]
gem 'solid_cable'
gem 'solid_cache'
gem 'solid_queue'
gem 'stimulus-rails' # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'thruster', require: false # Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem 'turbo-rails' # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]

group :development, :test do
  gem 'brakeman', require: false
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude' # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'rubocop-faker', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-thread_safety', require: false
  # gem "rubocop-rails-omakase", require: false # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
