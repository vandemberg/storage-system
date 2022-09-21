source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

# RAILS GEM TO USE CASE PATTERN
gem "interactor-rails", "~> 2.0"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails", "~> 5.1"
  gem "factory_bot_rails", "~> 6.2"
  gem "faker"
end

group :development do
end

group :test do
  gem 'timecop'
  gem "shoulda-matchers", "~> 5.1"
  gem "database_cleaner-active_record", "~> 2.0"
  gem "simplecov", "~> 0.21.2", require: false
  gem 'coveralls'
end
