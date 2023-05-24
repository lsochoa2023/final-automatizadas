Feature: Crear un Tag

@user1 @web
Scenario: Con mi usuario de ghost creo un Tag con un nombre que ya exista
  Given I navigate to page "<URL>"
  And I wait for 2 seconds
  When I enter login email "<USERNAME1>"
  And I wait for 1 seconds
  And I enter login password "<PASSWORD1>"
  And I wait for 1 seconds
  And I submit login
  And I wait for 3 seconds
  Then I should have a nav-bar with functions

  When I click on the tag function
  And I wait for 1 seconds
  Then I should have a new tag button
  Then I save and existing tag name
  
  When I wait for 1 seconds 
  And I click on the tag button
  And I wait for 1 seconds
  Then I should have a form to enter tag information and save button
  
  When I enter existing tag name
  And I wait for 1 seconds
  And I enter tag-slug
  And I wait for 1 seconds
  And I enter tag-descripton-five-hundred-one
  And I wait for 1 seconds
  And I click Save
  And I wait for 2 seconds
  And I click on the tag function
  And I wait for 1 seconds
  Then I should have a new tag with corrent slug link
