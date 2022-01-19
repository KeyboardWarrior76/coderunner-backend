source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Fake data generator
gem 'faker'

# Serializer to format data sent to client
gem 'fast_jsonapi'

# Cloudinary API uploads images to third party database
gem 'cloudinary'

# TinyPNG API; it makes uploaded files smaller
gem 'tinify'

# For "soft deletion" of records
gem 'discard'

# Easy pagination library for query results
gem 'kaminari'

# Gem for Sendgrid mailing api
gem 'sendgrid-ruby'

# Creates Interactor service objects to manage controller complexity
gem 'interactor'

# CLI for Interactor gem
gem 'interactor-rails'

# Adds rate limiting, blacklisting, whitelisting, and other security features.
gem 'rack-attack'

# Support for phnoe number normalization and validation
gem 'phony'

# Colors text in console
gem 'rainbow'

# Used for running files, and allows us to pass json through stdin
gem 'open3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :development do
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]