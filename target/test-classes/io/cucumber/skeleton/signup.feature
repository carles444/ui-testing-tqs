Feature: Tests a page SignUp
  It will test the correct and incorrect SignUp

  Scenario: Bad SignUp (bad phone number)
    Given I go to the home page
    When I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I click on "Registrame ahora" href with link "/registrate"
    And I write on input name "nombre" the text "Alfredo"
    And I write on input name "apellido" the text "Casado"
    And I write on input id "day" the text "09"
    And I write on input id "month" the text "02"
    And I write on input id "year" the text "2000"
    And I write on input name "tlf" the text "29834792374"
    And I write on input name "email" the text "asdlflsdj@jhaslñdfj.com"
    And I write on input name "password" the text "asdfasdf"
    And I write on input name "repeat_password" the text "asdfasdf"
    And I submit id "personal-data-form" form
    And I wait for 1000 milliseconds
    Then I should see a "Regístrate y empieza a disfrutar de tu pizza de una forma más rápida y cómoda" text


  Scenario: Bad Password
    Given I go to the home page
    When I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I click on "Registrame ahora" href with link "/registrate"
    And I write on input name "nombre" the text "Alfredo"
    And I write on input name "apellido" the text "Casado"
    And I write on input id "day" the text "09"
    And I write on input id "month" the text "02"
    And I write on input id "year" the text "2000"
    And I write on input name "tlf" the text "29834792374"
    And I write on input name "email" the text "asdlflsdj@jhaslñdfj.com"
    And I write on input name "password" the text "asdf"
    And I write on input name "repeat_password" the text "asdf"
    And I submit id "personal-data-form" form
    And I wait for 1000 milliseconds
    Then I should see a "Comprueba si has escrito bien tu contraseña" text


  Scenario: Registered User
    Given I go to the home page
    When I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I click on "Registrame ahora" href with link "/registrate"
    And I write on input name "nombre" the text "Alfredo"
    And I write on input name "apellido" the text "Casado"
    And I write on input id "day" the text "09"
    And I write on input id "month" the text "02"
    And I write on input id "year" the text "2000"
    And I write on input name "tlf" the text "29834792374"
    And I write on input name "email" the text "carlesandreu4@gmail.com"
    And I write on input name "password" the text "asdfasdf"
    And I write on input name "repeat_password" the text "asdfasdf"
    And I submit id "personal-data-form" form
    And I wait for 1000 milliseconds
    Then I should see a "Regístrate y empieza a disfrutar de tu pizza de una forma más rápida y cómoda" text
