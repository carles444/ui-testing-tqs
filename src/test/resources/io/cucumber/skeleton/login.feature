Feature: Tests a page LogIn
  It will test the correct and incorrect login

  Scenario: Bad email LogIn test
    Given I go to the home page
    When I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I write on input name "usuario" the text "patata@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "patata"
    And I wait for 500 milliseconds
    And I submit id "register-form" form
    And I wait for 1000 milliseconds
    Then I should see a "Sus datos de acceso no son correctos" text

  Scenario: Bad password LogIn test
    Given I go to the home page
    When I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I write on input name "usuario" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "asdfasdf"
    And I wait for 500 milliseconds
    And I submit id "register-form" form
    And I wait for 1000 milliseconds
    Then I should see a "Sus datos de acceso no son correctos" text

  Scenario: Correct log in
    Given I go to the home page
    When I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I write on input name "usuario" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "torreblanca"
    And I wait for 500 milliseconds
    And I submit id "register-form" form
    And I wait for 1000 milliseconds
    Then I should see a "¿Vienes o vamos?" text