source 'https://rubygems.org'

RAILS_VERSION = '~> 3.2.8'
RSPEC_VERSION = '~> 2.11.0'
DATAMAPPER    = 'http://github.com/datamapper'

gem 'randexp'

gem 'rails', RAILS_VERSION

gem 'rails-api'

## DataMapper
gem 'dm-core',           git: "#{DATAMAPPER}/dm-core.git",           branch: 'master'
gem 'dm-active_model',   git: "#{DATAMAPPER}/dm-active_model.git",   branch: 'master'
gem 'dm-rails',          git: "#{DATAMAPPER}/dm-rails.git",          branch: 'master'
gem 'dm-do-adapter',     git: "#{DATAMAPPER}/dm-do-adapter.git",     branch: 'master'
gem 'dm-sqlite-adapter', git: "#{DATAMAPPER}/dm-sqlite-adapter.git", branch: 'master'
gem 'dm-migrations',     git: "#{DATAMAPPER}/dm-migrations.git",     branch: 'master'
gem 'dm-types',          git: "#{DATAMAPPER}/dm-types.git",          branch: 'master'
gem 'dm-validations',    git: "#{DATAMAPPER}/dm-validations.git",    branch: 'master'
gem 'dm-timestamps',     git: "#{DATAMAPPER}/dm-timestamps.git",     branch: 'master'
gem 'dm-serializer',     git: "#{DATAMAPPER}/dm-serializer.git",     branch: 'master'

# Use thin as the app server
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem "rspec-rails",          RSPEC_VERSION
  gem 'wirble'
end

group :test do
  # High-level testing
  gem 'cucumber-rails',       require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'

  # Pretty printed test output
  gem 'turn',                 '~> 0.9.4', require: false

  # Needed to generate sample data for RSpec and Cucumber
  gem 'dm-sweatshop', git: "#{DATAMAPPER}/dm-sweatshop.git", branch: 'master'

  # For Cucumber POST testing
  gem 'curb'

  gem 'factory_girl_rails', '~> 4.0'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'spork-rails'
  gem 'rb-inotify', '~> 0.8.8'
end
