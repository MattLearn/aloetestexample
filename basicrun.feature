Feature: Interview that works with actions
  In order to ensure my interview is running properly I want to
  see how it reacts to input.

Scenario: Test main.yml
  Given I am using the server "server-address/URL"
  And I start the interview "interview-start-link"
  And I should see the phrase "Welcome"
  And I click the button "Continue"
  Then I should see the phrase "Please provide some information on the vendor"
  And I set "First name" to "James"
  And I set "Last name" to "Redux"
  And I set "Occupation" to "Occupier"
  And I set "Address" to "18 Red Street"
  And I set "Date of Birth" to "1990-04-03"
  And I set "ID number" to "196008"
  And I click the "This agreement is being done" option
  Then I set "Input Field" to "11104432"
  And I click the "I am acting on this check" option
  Then I click the button "Continue"
  Then I should see the phrase "Vendor Summary"
  And I wait 3 seconds
  And I click the button "Continue"
  And I wait forever