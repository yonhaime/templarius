require 'spec_helper'
# Load Rails environment in test mode
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?

# Load RSpec and Capybara
require 'rspec/rails'
require 'capybara/rspec'

# Include ViewComponent test helpers
require 'view_component/test_helpers'
require 'view_component/system_test_helpers'

# Configure RSpec
RSpec.configure do |config|
  # Include ViewComponent test helpers
  config.include ViewComponent::TestHelpers, type: :component
  config.include ViewComponent::SystemTestHelpers, type: :component
  config.include Capybara::RSpecMatchers, type: :component

  # Include FactoryBot methods
  config.include FactoryBot::Syntax::Methods
end

# Load support files
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Maintain test schema
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.fixture_path = Rails.root.join('spec/fixtures')
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
