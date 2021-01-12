# frozen_string_literal: true
require "selenium-webdriver"

describe "I am on manager portal login page" do
  it "open manager portal login page" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://staging.propertyfinder.ae/manager/login'
    title_text = driver.title
    match_title(title_text)
    driver.quit
  end
end

def match_title(title_text)
  expect(@browser.title).to be == title_text
end

