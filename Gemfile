source 'https://rubygems.org'
gem 'rails', '~> 5.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'coffee-script-source', '1.8.0'
gem 'execjs', '~> 2.6'

gem 'normalize-rails'
gem "font-awesome-rails"
gem 'bootstrap-sass', '~> 3.2.0'
gem 'bootstrap_form', require: 'bootstrap_form', git: 'https://github.com/bootstrap-ruby/rails-bootstrap-forms.git'

gem 'autoprefixer-rails'
#gem 'rmagick', '~> 2.15', '>= 2.15.4'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'paperclip', '~> 5.0'
gem 'friendly_id', '~> 5.1'
gem 'meta-tags', '~> 2.1'
#rails admin
gem 'remotipart', github: 'mshibuya/remotipart'
gem 'rails_admin', '>= 1.0.0.rc'
gem 'cancancan', '~> 1.15'
#gem 'cancan'

gem 'momentjs-rails'
#to your Gemfile and//= require moment
gem 'fullcalendar-rails', '~> 2.8'
# application.css.scss:*= require fullcalendar application.js: //= require fullcalendar You can also include the fullcalendar.print file in your css manifest like this:
#*= require fullcalendar.print

gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'ransack',             github: 'activerecord-hackery/ransack'
gem 'draper',              '> 3.x'

gem 'devise'
#gem 'activeadmin', github: 'activeadmin'

group :development, :test do
  gem 'rspec', '~> 3.5'
  gem 'byebug', platform: :mri
  gem 'mysql2', '>= 0.3.18', '< 0.5'
end
platforms :ruby do # linux
 # gem 'unicorn'
  gem 'puma'
end
group :development do
  gem 'web-console'
  gem 'cocaine', '~> 0.5.8'
end
group :production do
  gem 'rails_12factor'
  gem 'pg'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
