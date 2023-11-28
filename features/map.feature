Feature: Display map at various scopes
  As a user
  So that I can easily select my address
  I want to a map of the US, US states, and US counties

  Scenario: Show map of the US
    When I go to the home page
    Then I should see "National Map"
    And I should not see "CA"

  Scenario: Show map of California
    Given I am on the home page
    Then I should see "National Map"
    When I go to CA state map page
    Then I should see "CA"

  Scenario: Request map for non-existent state
    Given I am on the home page
    And I should not see "not found."
    When I go to ZZ state map page
    And I should see "not found."

  Scenario: Show map of Alameda County, CA
    Given I am on CA state map page
    When I go to Alameda County, CA county map page
    Then I should see "Alameda County Assessor"
