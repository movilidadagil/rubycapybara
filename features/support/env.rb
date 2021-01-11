require "capybara/cucumber"
require "selenium/webdriver"

Capybara.default_max_wait_time = 10
Capybara.default_driver = :selenium

Before do | scenario |
  jobname = "#{scenario.feature.name} - #{scenario.name}"

  Capybara.register_driver :selenium do | app|
    capabilities = {
      :version => ENV['version'],
      :browserName => ENV['browserName'],
      :platform => ENV['platform'],
      :name => jobname
    }
    url = "http://localhost:4444/wd/hub".strip

    Capybara::Selenium::Driver.new(app,
                                   :browser => :remote, :url => url,
                                   :desired_capabilities => capabilities)
  end

end

After do | scenario |
  @driver.quit
  Capybara.use_default_driver
end
