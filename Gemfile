source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'

# Database
platforms :mri, :rbx do
  gem 'pg', group: :postgresql
  gem 'mysql2', group: :mysql
end

platforms :jruby do
  gem 'activerecord-jdbcpostgresql-adapter', group: :postgresql
  gem 'activerecord-jdbcmysql-adapter', group: :mysql
end

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Server
gem 'puma'

# Assets
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '~> 5.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'coffee-rails', '~> 4.1.0'

# Markdown
gem 'kramdown', '~> 1.7.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Development
group :development do
  gem 'guard', '~> 2.12.7'
  gem 'guard-rspec', '~> 4.6.0', require: false
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: :mri

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0', platforms: [:mri, :rbx]

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Testing
  gem 'rspec-rails', '~> 3.3.2'
  gem 'capybara', '~> 2.4.4'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'database_cleaner', '~> 1.4.1'

  # Code Climate
  gem "codeclimate-test-reporter", require: false, platforms: :mri
end
