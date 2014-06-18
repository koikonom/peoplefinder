source 'https://rubygems.org'
ruby '2.1.1'
gem 'rails', '4.1.1'

gem 'coffee-rails', '~> 4.0.0'
gem 'govuk_frontend_toolkit'
gem 'haml-rails'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'moj_frontend_toolkit_gem',
  git: 'https://github.com/ministryofjustice/moj_frontend_toolkit_gem.git',
  ref: '8826821' # TODO: change to tag when branch remove_gem_lock is merged
gem 'omniauth-google-apps'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'simple_form', '~> 3.1.0.rc1'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'spring'
  gem 'thin'
end

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.0.0'
end
