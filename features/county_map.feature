Feature: Display a list of representatives from County Map
  Scenario: Show representatives from Alameda County
    Given I am on CA state map page
    When I go to Alameda county map page
    Then I should see "Alameda County District Attorney"

  Scenario: Show representative from 
    Given I am on UT state map page
    When I go to Salt Lake county map page
    Then I should see "Mayor of Salt Lake County"
	