require 'capybara/cucumber'
require 'selenium-webdriver'
require 'faker'
require 'site_prism'
require 'pry'
require 'report_builder'
require 'rspec'
require 'parallel_tests'
require_relative 'page_helper'
require 'byebug'

World(PageObjects)
Faker::Config.locale = 'pt-BR'

if ENV['headless']
  Selenium::WebDriver::Chrome::Service.driver_path = "#{Dir.pwd}/webdrivers/chromedriver"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_headless_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--incognito"
      options.add_argument "--window-size=1280,1280"
      options.add_argument "--disable-site-isolation-trials"
      options.add_argument "--disable-dev-shm-usage"
      options.add_argument 'user-agent="AUTOMATION-TESTING"'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: chrome_headless_options)
  end
  Capybara.default_driver = :selenium_chrome_headless
else
  ENVIRONMENT_TYPE ||= ENV['plataforma']
  if ENVIRONMENT_TYPE == 'MACos'
    Selenium::WebDriver::Chrome::Service.driver_path = "#{Dir.pwd}/webdrivers/chromedriver"
  else
    Selenium::WebDriver::Chrome::Service.driver_path = "#{Dir.pwd}/webdrivers/chromedriver.exe"
  end
  Capybara.register_driver :chrome do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument '--disable-gpu'
      options.add_argument '--no-sandbox'
      options.add_argument "--incognito"
      options.add_argument "--window-size=1280,1280"
      options.add_argument '--disable-site-isolation-trials'
      options.add_argument '--start-maximized'
      options.add_argument 'user-agent="AUTOMATION-TESTING"'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  Capybara.default_driver = :chrome
end

Capybara.configure do |config|
  config.run_server = false
  config.app_host   = 'https://blogdoagi.com.br/'
  config.default_max_wait_time = 20
end
