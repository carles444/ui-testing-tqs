Feature: Tests a page LogIn
  It will test the add product in cart


  Scenario: Crear una pizza al gusto version 1
    Given I go to the home page

    And I wait for 1000 milliseconds
    And I click on "ACEPTAR" text button
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/crea-tu-pizza"
    And I wait for 1000 milliseconds
    And Scroll down "200"
    And I wait for 1000 milliseconds
    And I select name "Cantidad" value "3"
    And I wait for 1000 milliseconds
    And I select class "tipoMasa" value "4"
    And I wait for 2000 milliseconds
    And I select id "selectCantidad-relacionado" value "4"
    And I wait for 2000 milliseconds
    And Scroll down "300"
    And I wait for 2000 milliseconds
    And I click by css selector "label[idsalsa='156001'] "
    And I wait for 2000 milliseconds
    And I click by css selector "li[data-slider-value='3'] "
    And I wait for 1000 milliseconds
    And Scroll down "300"
    And I wait for 3000 milliseconds
    And I click by css selector "li[data-ing='Bacon'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 2000 milliseconds
    And I click on "Añadir" text button
    And I wait for 2000 milliseconds
    And I wait for 1000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80015"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "Plaza Roca I PI"
    And I write on input id "Direccion_NumeroPortal" the text "3"
    And I wait for 2000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 2000 milliseconds
    And I submit name "recoger" form
    And I wait for 2000 milliseconds
    And I click by css selector "div[class='icon'] "
    And I wait for 3000 milliseconds
    Then I should see a "Margarita" text
    And I wait for 3000 milliseconds

  Scenario: Crear una pizza al gusto version 2
    Given I go to the home page

    And I wait for 1000 milliseconds
    And I click on "ACEPTAR" text button
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/crea-tu-pizza"
    And I wait for 1000 milliseconds
    And Scroll down "200"
    And I wait for 1000 milliseconds
    And I select name "Cantidad" value "2"
    And I wait for 1000 milliseconds
    And I select class "tipoMasa" value "8"
    And I wait for 2000 milliseconds
    And I select id "selectCantidad-relacionado" value "1"
    And I wait for 2000 milliseconds
    And Scroll down "300"
    And I wait for 2000 milliseconds
    And I click by css selector "label[idsalsa='304001'] "
    And I wait for 2000 milliseconds
    And I click by css selector "li[data-slider-value='3'] "
    And I wait for 1000 milliseconds
    And Scroll down "300"
    And I wait for 3000 milliseconds
    And I click by css selector "li[data-ing='Bacon'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 2000 milliseconds
    And I click by css selector "li[data-ing='York'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 1000 milliseconds
    And I click by css selector "li[data-ing='Pollo a la parrilla'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 1000 milliseconds
    And I click by css selector "li[data-ing='Carne de vacuno'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 2000 milliseconds
    And I wait for 1000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80015"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "Plaza Roca I PI"
    And I write on input id "Direccion_NumeroPortal" the text "3"
    And I wait for 2000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 2000 milliseconds
    And I submit name "recoger" form
    And I wait for 2000 milliseconds
    And I click by css selector "div[class='icon'] "
    And I wait for 3000 milliseconds
    Then I should see a "Margarita" text
    And I wait for 3000 milliseconds


  Scenario: Crear una pizza al gusto version 3
    Given I go to the home page

    And I wait for 1000 milliseconds
    And I click on "ACEPTAR" text button
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/crea-tu-pizza"
    And Scroll down "200"
    And I wait for 1000 milliseconds
    And I select name "Cantidad" value "2"
    And I wait for 1000 milliseconds
    And I select class "tipoMasa" value "2"
    And I wait for 2000 milliseconds
    And I select id "selectCantidad-relacionado" value "2"
    And I wait for 2000 milliseconds
    And Scroll down "300"
    And I wait for 2000 milliseconds
    And I click by css selector "label[idsalsa='525001'] "
    And I wait for 2000 milliseconds
    And I click by css selector "li[data-slider-value='3'] "
    And I wait for 1000 milliseconds
    And Scroll down "300"
    And I wait for 3000 milliseconds
    And I click by css selector "li[data-ing='Pollo Buffalo'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 1000 milliseconds
    And I click by css selector "li[data-ing='Pepperoni'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 1000 milliseconds
    And I click by css selector "li[data-ing='Bacon Crispy'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 2000 milliseconds
    And I wait for 1000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80015"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "Plaza Roca I PI"
    And I write on input id "Direccion_NumeroPortal" the text "3"
    And I wait for 2000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 2000 milliseconds
    And I submit name "recoger" form
    And I wait for 2000 milliseconds
    And I click by css selector "div[class='icon'] "
    And I wait for 3000 milliseconds
    Then I should see a "Margarita" text
    And I wait for 3000 milliseconds

