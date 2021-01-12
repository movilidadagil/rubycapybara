# frozen_string_literal: true

Given /^I am on manager portal login page$/ do
  visit 'https://staging.propertyfinder.ae/manager/login'
end

def method_name(title_text)
  expect(@browser.title).to be == title_text
end

Then /^the title of the page should be "(.*)"$/, &method(:method_name)
