Feature: Tests Pizza Creation

  Scenario: create simple pizza
    Given I go to the home page
    When I click on "Crea tu pizza" href with link "/crea-tu-pizza"
    Then I should see a "Crea tu pizza a tu gusto" text
    When I click on "Añadir" text with id "addCreaPizza"
    Then I should see a "¿Estás registrado?" text

  Scenario: add some ingredients
    Given I go to the home page
    When I click on "Crea tu pizza" href with link "/crea-tu-pizza"
    Then I should see a "Crea tu pizza a tu gusto" text
    When I "increment" the "Carne de vacuno" ingredient with class ".inc-minus "
    When I click on "Añadir" text with id "addCreaPizza"
    Then I should see a "¿Estás registrado?" text