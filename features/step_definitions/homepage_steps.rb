# frozen_string_literal: true

Given /^I am on manager portal loginpage$/ do
  visit 'https://staging.propertyfinder.ae/manager/login'
end
Then /^the title of the page should be "(.*)"$/ do | title_text |
  expect(@browser.title).to be == title_text
end
