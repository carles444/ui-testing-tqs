Feature: Tests a page LogIn
  It will test the correct and incorrect login

  Scenario: Can see LogIn and SignUp section
    Given I go to the home page
    When I click on "Menu" button
    And I wait for 1500 milliseconds

    When I click on "Sign In" text
    Then I should see a "Login" text

  Scenario: Bad LogIn test
    Given I go to the home page
    And I wait for 200 milliseconds
    When I click on "Español" text
    When I click on "Menú" text
    And I click on "Cuenta" text
    And I write on form "form-input-identity" the text "carlesandreu4@gmail.com"
    And I write on form "form-input-credential" the text "hola"
    And I wait for 500 milliseconds
    And I click on "Iniciar Sessión" text

    And I wait for 2000 milliseconds
    Then I should see a "No podemos identificar esta combinación de correo electrónico y contraseña" text