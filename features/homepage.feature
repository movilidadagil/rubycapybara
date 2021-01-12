@selenium
Feature: Manager portal login page

  Scenario: Github homepage loads properly
    Given I am on manager portal login page
    Then the title of the page should be 'staging.propertyfinder.ae'
