require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RavTrack
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    config.generators do |g|
      g.orm :active_record
      g.template_engine :haml

      g.helper false
      g.stylesheets false
      g.javascripts false

      ## For specs
      g.fixtures false
      g.factory_bot dir: 'spec/factories'
      g.fixture_replacement :factory_bot, dir: 'spec/factories'

      g.feature_specs true
      g.job_specs true
      g.mailer_specs true
      g.model_specs true
      g.routing_specs false
      g.task_specs true

      # Don't generate system test files.
      g.system_tests nil
      g.channel_specs false
      g.controller_specs false
      g.generator_specs false
      g.helper_specs false
      g.install_specs false
      g.integration_specs false
      g.mailbox_specs false
      g.request_specs false
      g.scaffold_specs false
      g.system_specs false
      g.view_specs false
    end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
