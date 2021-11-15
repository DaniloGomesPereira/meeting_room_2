# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'devise', '~> 4.8'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sass-rails', '>= 6'
gem 'simple_calendar', '~> 2.4'

gem 'turbolinks', '~> 5'
gem 'validates_timeliness', '~> 6.0.0.alpha1'
gem 'webpacker', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'sqlite3', '~> 1.4'
  gem 'web-console', '>= 4.1.0'
end

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'webdrivers'
end

gem 'rubocop-rails', require: false
gem 'rubocop-rspec', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
