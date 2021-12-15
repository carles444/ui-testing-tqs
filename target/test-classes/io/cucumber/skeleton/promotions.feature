Feature: Tests Promotions Section

  Scenario: submit no promotional code
    Given I go to the home page
    When I click on "Promociones" href with link "/promociones"
    Then I should see a "¿Qué tipo de oferta quieres?" text
    When I submit id "personal-data-form" form
    Then I should see a "A domicilio" text
    And I restart session

  Scenario: submit bad promotional code
    Given I go to the home page
    When I click on "Promociones" href with link "/promociones"
    Then I should see a "¿Qué tipo de oferta quieres?" text
    When I write on input name "codigoPromocional" the text "asdf"
    And I submit id "personal-data-form" form
    Then I should see a "¿Estás registrado?" text

  Scenario: clicking a product without logging in
    Given I go to the home page
    When I click on "Promociones" href with link "/promociones"
    Then I should see a "¿Qué tipo de oferta quieres?" text
    When I click on "Quiero" text
    Then I should see a "¿Estás registrado?" text
    And I restart session

  Scenario: A recoger section
    Given I go to the home page
    When I click on "Promociones" href with link "/promociones"
    And I click on "A recoger" text
    Then I should see a "A recoger" text
    When I click on "Quiero" text
    Then I should see a "¿Estás registrado?" text
    And I restart session
