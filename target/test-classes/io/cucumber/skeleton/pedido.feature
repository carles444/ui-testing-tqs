Feature: Tests pedido
  It will test the add product in cart


  Scenario: Iniciar pedido sin regitrar domicilio
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "INICIAR PEDIDO" text button
    And I wait for 2000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 2000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80015"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "Plaza Roca I PI"
    And I wait for 1000 milliseconds
    And I write on input id "Direccion_NumeroPortal" the text "3"
    And I wait for 2000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 2000 milliseconds
    And I submit name "domicilio" form
    And I wait for 3000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 1000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 3000 milliseconds
    And I restart session
    And I wait for 3000 milliseconds



  Scenario: Iniciar pedido registrado recoger
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I write on input name "usuario" the text "charly251097@gmail.com"
    And I wait for 1000 milliseconds
    And I write on input name "password" the text "12345wwe"
    And I wait for 1000 milliseconds
    And I click on "Ok" text button
    And I wait for 3000 milliseconds
    And I click on "ARecoger" button
    And I wait for 1000 milliseconds
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
    And I restart session

  Scenario: Iniciar pedido registrado a domicilio

    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I write on input name "usuario" the text "charly251097@gmail.com"
    And I wait for 1000 milliseconds
    And I write on input name "password" the text "12345wwe"
    And I wait for 1000 milliseconds
    And I click on "Ok" text button
    And I wait for 2000 milliseconds
    And I click on "ADomicilio" button
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 2000 milliseconds
    And I click on "Añadir" text button
    And I wait for 1000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 1000 milliseconds
    And I restart session



  Scenario: Iniciar pedido registrado otra direccion
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "INICIAR PEDIDO" text button
    And I wait for 1000 milliseconds
    And I write on input name "usuario" the text "charly251097@gmail.com"
    And I write on input name "password" the text "12345wwe"
    And I wait for 1000 milliseconds
    And I click on "Ok" text button
    And I wait for 2000 milliseconds
    And I click on "otra-direccion" button
    And I wait for 1000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 2000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80015"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "Plaza Roca I PI"
    And I wait for 1000 milliseconds
    And I write on input id "Direccion_NumeroPortal" the text "3"
    And I wait for 2000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 2000 milliseconds
    And I submit name "recoger" form
    And I wait for 3000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 1000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 3000 milliseconds
    And I restart session
