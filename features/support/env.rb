require 'capybara/cucumber'
require_relative '../../../../Helen Rubymine project/API_test/features/lib/pages/employess.rb'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 #Wait time for asynchronous processes to finish
  config.default_driver = :chrome #ensure the default driver is chrome
end