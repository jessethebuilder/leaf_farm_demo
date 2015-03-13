source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
# gem 'turbolinks'
# gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'
gem 'geocoder'

gem 'carrierwave'
gem 'bootsy'
gem 'mini_magick'

gem 'farm_tools', :git => 'https://github.com/jessethebuilder/farm_tools'
# gem 'farm_tools', :path => 'C:\Users\Bucky\Desktop\jesseweb\farm_tools\farm_tools'
gem 'twitter_express', :git => 'https://github.com/jessethebuilder/TwitterExpress'
# gem 'twitter_express', :path => 'C:\Users\Bucky\Desktop\jesseweb\twitterexpress\twitterexpress'
gem 'leaf_farm', :git => 'https://github.com/jessethebuilder/leaf_farm'
# gem 'leaf_farm', :path => 'C:\Users\Bucky\Desktop\jesseweb\leaf_farm'

group :test, :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  gem 'faker'
  gem 'rspec-rails'
  gem 'wdm'
  gem 'database_cleaner', '~> 1.0.0rc'
  gem 'timecop'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'selenium-webdriver'
  gem 'shoulda'
  gem 'launchy', '~> 2.3.0'
  #gem 'webrat'
end

group :production do
  gem 'rails_12factor'
  # gem 'faker'
end

ruby '2.1.5'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
