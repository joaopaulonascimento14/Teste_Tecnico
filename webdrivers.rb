require 'webdrivers'

# You have to install webdriver gem
Webdrivers.install_dir = './webdrivers'
Webdrivers::Chromedriver.update
puts 'Script executado'