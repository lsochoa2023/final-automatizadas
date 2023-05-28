Feature: Recuperar contraseña

@user1 @web
Scenario: Recuperar contrasena con el email correcto
  Given I navigate to page "<URL>"
  And I wait for 2 seconds
  When I enter login email with e2e "<USERNAME1>"
  And I wait for 2 seconds  
  Then I submit forgot
  And I wait for 5 seconds
