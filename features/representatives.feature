Feature: Add new Representatives

Scenario: Viewing the Representatives of '94704'
  Given I am on the representatives page
  When I add a representative "Daniel" with ocdid "001"
  And I fill in "address" with "94704"
  And I press "Search"
  Then I should see representative "Daniel" once

Scenario: Adding duplicate Representative
  Given I am on the representatives page
  And the Representative "Daniel" with ocdid "001" exists
  When I add a representative "Daniel" with ocdid "001"
  And I fill in "address" with "94704"
  And I press "Search"
  Then I should see representative "Daniel" once

Scenario: Multiple searches to '94704' return the same number of representatives
  Given I am on the representatives page
  And I fill in "address" with "94704"
  And I press "Search"
  Then I should see 26 representatives
  Given I am on the representatives page
  And I fill in "address" with "94704"
  And I press "Search"
  Then I should see 26 representatives

Scenario: Adding representative 'Daniel'
  Given I am on the representatives page
  And the Representative "Daniel" with ocdid "001" exists
  When I fill in "address" with "94704"
  And I press "Search"
  Then I should see 27 representatives
