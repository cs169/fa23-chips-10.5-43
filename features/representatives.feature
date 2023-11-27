Feature: Add new Representatives

Scenario: Multiple searches to '94704' return the same number of representatives
  Given I am on the representatives page
  And I fill in "address" with "94704"
  And I press "Search"
  Then I should see 26 representatives in table
  And I should see 26 representatives in the database
  Given I am on the representatives page
  And I fill in "address" with "94704"
  And I press "Search"
  Then I should see 26 representatives in table
  And I should see 26 representatives in the database
