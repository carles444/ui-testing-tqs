Feature: Tests a page LogIn
  It will test the add product in cart





  Scenario: Pedir pizza a domicilio sin registro error calle
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Domicilio" text button
    And I wait for 1000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80124"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "sadfasdf"
    And I wait for 1000 milliseconds
    And I write on input id "Direccion_NumeroPortal" the text "1"
    And I wait for 1000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 1000 milliseconds

    Then I should see an alert saying "La calle no esta entre las opciones posibles"
    And I wait for 3000 milliseconds

  Scenario: Pedir pizza a domicilio sin registro calle correcta tienda sin servicio adomicilio
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Domicilio" text button
    And I wait for 1000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 1000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80124"
    And I wait for 1000 milliseconds
    And I write on input id "1tags" the text "Passatge Sant Miquel"
    And I wait for 1000 milliseconds
    And I write on input id "Direccion_NumeroPortal" the text "1"
    And I wait for 1000 milliseconds
    And I click on "Buscar tiendas" text button
    And I wait for 1000 milliseconds
    And I submit name "recoger" form
    And I wait for 1000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds

    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 3000 milliseconds

  Scenario: Pedir pizza a domicilio sin registro calle correcta tienda con servicio adomicilio
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Domicilio" text button
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
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    Then I should see an alert saying "Hemos añadido esta pizza a tu pedido"
    And I wait for 1000 milliseconds




