source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(".ruby-version")

gem 'puma'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'sass-rails'
gem "uglifier"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
end
