Feature: Hacer Login 

@user1 @web
Scenario: Hacer Login con email correcto y password vacío
  Given I navigate to page "<URL>"
  And I wait for 2 seconds
  When I enter login email with e2e "<USERNAME1>"
  And I wait for 2 seconds
  And I enter login password with e2e "<PASSWORD2>"
  And I wait for 1 seconds
  And I submit login
  And I wait for 5 seconds
  Then I should have a nav-bar with functions
