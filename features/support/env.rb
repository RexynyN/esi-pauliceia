require "capybara"
require "capybara/cucumber"
require "capybara/rspec"
require "site_prism"
require "rspec"
require "rspec/expectations"

include RSpec::Matchers

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://pauliceia.unifesp.br"
    config.default_max_wait_time = 5
    config.ignore_hidden_elements = false
end