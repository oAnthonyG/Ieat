source "https://rubygems.org"
source "https://packages.redis.io"

ruby "3.0.2"

gem "bootsnap", require: false
gem 'devise'
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 7.1.3"
gem 'sass-rails', '~> 6.0'
gem 'turbolinks', '~> 5.2', '>= 5.2.1'
gem 'webpacker', '~> 5.4', '>= 5.4.4'
gem 'sidekiq'
gem 'redis', '~> 5.1'

gem "turbo-rails"
gem "sprockets-rails"
gem "importmap-rails"
gem "stimulus-rails"
 
group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'faker'
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
end

group :development do
  gem 'listen', '~> 3.8'
  gem 'spring-watcher-listen', '~> 2.1'
  gem 'spring', '~> 4.1', '>= 4.1.3'
  gem "web-console"
end

gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]
