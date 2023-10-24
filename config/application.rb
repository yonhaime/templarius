require_relative "boot"
require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"

Bundler.require(*Rails.groups)

module Templarius
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1
    config.generators.system_tests = nil
    config.lookbook.project_name = 'Components'
    config.view_component.default_preview_layout = 'lookbook'
    config.view_component.preview_paths << Rails.root.join('app/components').to_s
    config.paths.add 'app/components', eager_load: true, glob: '*'
    config.autoload_lib(ignore: %w(assets tasks))
  end
end
