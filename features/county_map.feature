Feature: Display a list of representatives from County Map
  As a user
  So that I can contact my representatives about policies
  I want to see a list of my representatives

  Scenario: Show representatives from Alameda County
    Given I am on CA state map page
    When I go to Alameda County, CA county map page
    Then I should see "Alameda County District Attorney"

  Scenario: Show representative from Salt Lake County
    Given I am on UT state map page
    When I go to Salt Lake County, UT county map page
    Then I should see "Mayor of Salt Lake County"
	