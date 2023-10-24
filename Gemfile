source 'https://rubygems.org'
ruby '3.2.2'

# Bundle edge Rails instead: gem "rails"
gem 'rails', '~> 7.1.1'

# Use pg as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server
gem 'puma', '~> 6.4'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Modern assets pipeline in Ruby On Rails
gem 'vite_rails'

# Building web application without using much JavaScript
gem 'turbo-rails'

# A framework for building testable & encapsulated components
gem 'view_component'

# Authentication solution
# gem 'devise'

# For roles management
# gem 'rolify'

# Authorization library
# gem 'cancancan'

group :development, :test do
  # Useful tool for debugging Ruby code
  gem 'debug', platforms: %i[mri windows]

  # Behaviour Driven Development for Ruby
  gem 'rspec-rails'

  # Browser testing and Automation
  gem 'capybara'

  # Library for setting up test data
  gem 'factory_bot_rails'

  # Create dummy data for your tests
  gem 'faker'

  # Preview system for ViewComponents
  gem 'lookbook'

  # Ruby static code analyzer
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  # Use console on exceptions pages
  gem 'web-console'

  # Print tables in the rails console
  gem 'table_print'

  # IRB objects in nicely formatted
  gem 'awesome_print'

  # Provides a better error page
  gem 'better_errors'
  gem 'binding_of_caller'
end
