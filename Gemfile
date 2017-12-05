source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.1', '>= 4.1.1'
gem 'jquery-turbolinks', '~> 2.1'
gem 'devise', '~> 4.3', '>= 4.3'
gem 'pundit', '~> 1.1.0', '>= 1.1.0'
gem 'bulma-rails', '~> 0.6.1'
gem 'font-awesome-rails'
gem 'meta-tags'
gem 'google-tag-manager-rails'
gem 'sidekiq'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
  gem 'minitest-rails', '~> 3.0'
  gem 'minitest-reporters', '~> 1.1.14'
  gem 'minitest-rails-capybara', '~> 3.0.1'
  #gem 'faker'
  gem 'capybara', '~> 2.16.1'
  #gem 'pundit-matchers'
  gem 'selenium-webdriver'
  gem 'simplecov', :require => false
end

group :development, :test do
  gem 'pry'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
