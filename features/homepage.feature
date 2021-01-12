@selenium
Feature: Github homepage

  Scenario: Github homepage loads properly
    Given I am on manager portal loginpage
    Then the title of the page should be 'staging.propertyfinder.ae'
    # Then the title of the page should be "GitHub · Build software better, together."