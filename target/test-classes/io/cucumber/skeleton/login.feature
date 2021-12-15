Feature: Tests a page LogIn
  It will test the correct and incorrect login

  Scenario: Can see LogIn and SignUp section
    Given I go to the home page
    When I wait for 5000 milliseconds
    And I click on "ig-responsive-menu-button" button
    And I wait for 8000 milliseconds
    And I click on "Mi cuenta" href with link "#"
    And I wait for 1000 milliseconds
    Then I should see a "Ya tengo una cuenta en IG" text

  Scenario: Bad email LogIn test
    Given I go to the home page
    When I click on "Iniciar sesión" href with link "https://my.eneba.com/es/login?ref=%2Fes"
    And I wait for 1000 milliseconds
    And I write on input name "username" the text "patata@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "patata"
    And I wait for 500 milliseconds
    And I submit name "username" form
    And I wait for 1000 milliseconds
    Then I should see a "Credenciales proporcionadas inválidas" text

  Scenario: Bad password LogIn test
    Given I go to the home page
    When I click on "ig-responsive-menu-button" button
    And I wait for 500 milliseconds
    And I click on "Mi cuenta" href with link "#"
    And I wait for 1000 milliseconds
    And I write on input name "email" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "lasdjf"
    And I wait for 500 milliseconds
    And I submit class "ig-login-form" form
    And I wait for 500 milliseconds
    Then I should see an alert saying "Correo electrónico o contraseña errónea."

  Scenario: Correct log in
    Given I go to the home page
    And I click on "Menu" button
    And I wait for 500 milliseconds
    And I click on "Sign In" href with link "/account/"
    And I wait for 1000 milliseconds
    And I write on form "CustomerEmail" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on form "CustomerPassword" the text "patata"
    And I wait for 500 milliseconds
    And I submit "customer_login" form
    And I wait for 500 milliseconds
    Then I should see a "Mi cuenta" text

    And I click by css selector " span[class='ico ico-user'] "
    And I wait for 100000 milliseconds
