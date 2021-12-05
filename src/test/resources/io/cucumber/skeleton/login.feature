Feature: Tests a page LogIn
  It will test the correct and incorrect login

  Scenario: Can see LogIn and SignUp section
    Given I go to the home page
    When I click on " Acceder " text
    Then I should see a " Acceder | Registrarme " text

  Scenario: Entering wrong password shape
    Given I go to the home page
    When I click on " Acceder " text
    And I write on form "email" the text "abcd@gmail.com"
    And I write on form "Contraseña" the text "patata"
    Then I should see a "La constraseña debe tener al menos 8 caracteres" text