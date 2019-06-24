require "capybara/dsl"
require "certified"
require "cucumber"
require "faker"
require "httparty"
require "javascript"
require "json"
require "pry"
require "rspec"
require "selenium-webdriver"
require "site_prism"

URL = YAML.load_file "./features/dataset/dataset.yml"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 5

Capybara.page.driver.browser.manage.window.maximize