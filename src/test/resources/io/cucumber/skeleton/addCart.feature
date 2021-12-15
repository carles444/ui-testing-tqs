Feature: Tests a page LogIn
  It will test the add product in cart


  Scenario: Pedir pizza para recoger
    Given I go to the home page
    And I wait for 500 milliseconds
    And I click on "ACEPTAR" text button
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click by css selector "li[data-name='Texas BBQ Crispy']"
    And I wait for 500 milliseconds
    And I click by css selector "li[data-name='Texas BBQ Crispy'] button[class='red pedido-no-iniciado']"
    And I wait for 2500 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80124"
    And I wait for 1000 milliseconds
    And I click on "idRecoger" button
    And I wait for 3000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 3000 milliseconds
    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 1000 milliseconds


  Scenario: Pedir pizza para recoger personalizar
    Given I go to the home page
    And I wait for 500 milliseconds
    And I click on "ACEPTAR" text button
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click by css selector "li[data-name='Texas BBQ Crispy']"
    And I wait for 500 milliseconds
    And I click by css selector "li[data-name='Texas BBQ Crispy'] button[class='red pedido-no-iniciado']"
    And I wait for 2500 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80124"
    And I wait for 3000 milliseconds
    And I click on "Recoger" text button
    And I wait for 3000 milliseconds
    And I click on "change-pizza" button
    And I wait for 3000 milliseconds
    And I select id "cantidad" value "2"
    And I wait for 1000 milliseconds
    And I select id "tamanioPizza" value "3"
    And I wait for 1000 milliseconds
    And I select id "masaPizza" value "4"
    And I wait for 2000 milliseconds
    And I click by css selector "label[idsalsa='156001'] "
    And I wait for 2000 milliseconds
    And I click by css selector "li[data-slider-value='3'] "
    And I wait for 2000 milliseconds
    And I click by css selector "li[data-ing='Bacon'] span[class='ico ico-circle-white inc-plus']"
    And I wait for 2000 milliseconds
    And I click on "btnAdd" button
    And I wait for 2000 milliseconds
    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 1000 milliseconds




  Scenario: Iniciar pedido registrado a recoger firts time
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I write on input name "usuario" the text "carlosgaray251097@gmail.com"
    And I wait for 1000 milliseconds
    And I write on input name "password" the text "12345wwe"
    And I wait for 1000 milliseconds
    And I click on "Ok" text button
    And I wait for 1000 milliseconds
    And I go to the home page
    And I wait for 3000 milliseconds
    And I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80015"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "Plaza Roca I PI"
    And I wait for 1000 milliseconds
    And I write on input id "Direccion_NumeroPortal" the text "3"
    And I wait for 1000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 2000 milliseconds
    And I submit name "recoger" form
    And I wait for 5000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 1000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 1000 milliseconds











