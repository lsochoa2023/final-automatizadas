Feature: Crear Post 

@user1 @web
Scenario: Crear Post con título vacío y detalle vacío
  Given I navigate to page "<URL>"
  And I wait for 2 seconds
  When I enter login email with e2e "<USERNAME1>"
  And I wait for 2 seconds
  And I enter login password with e2e "<PASSWORD1>"
  And I wait for 1 seconds
  And I submit login
  Then I navigate to page "<POST>" 
  And I wait for 1 seconds
  And I navigate to page "<EDITORPOST>" 
  And I wait for 2 seconds
  And I enter title post with e2e "<TITLEPOSTVACIO>" 
  And I wait for 2 seconds
  And I enter detail post with e2e "<DETAILPOSTVACIO>"
  And I wait for 2 seconds
  And I clic save post   
  And I wait for 7 seconds
