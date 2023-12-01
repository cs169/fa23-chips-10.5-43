Feature: Search and display Campaign Finances
  As a user
  So that I can easily search campaign finances 
  I want to give a cycle and category
  And get the top 20 candidates

  # Scenario: Show the Search Campaign Finances page
  #   Given I am on the news items page
  #   When I press "Search Campaign Finances"
  #   Then I should see "Search Campaign Finances"
  #   And I should see "Select cycle:"
  #   And I should see "Select category:"

  Scenario: Search Campaign Finances
    Given I am on the campaign finances page
    And I select "2012" from "cycle"
    And I select "pac-total" from "category"
    When I press "Search"
    Then I should see "LINCOLN, BLANCHE LAMBERT"

