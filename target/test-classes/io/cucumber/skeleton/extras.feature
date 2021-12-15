Feature: Tests extra products
  It will test the add product in cart



  Scenario: Pedir pizza para recoger mas entrantes
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Recoger" text button
    And I wait for 2000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 2000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80124"
    And I wait for 2000 milliseconds
    And I click on "idRecoger" button
    And I wait for 5000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    And I go to the home page
    And I click on "Entrantes" button
    And I wait for 1000 milliseconds
    And I click on "Chese Bacon Fries" class with link "PizzaContent"
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 1000 milliseconds
    And I click on "Añadir entrante" text button
    And I wait for 1000 milliseconds
    Then I should see an alert saying "Hemos añadido este entrante a tu pedido"
    And I restart session





  Scenario: Pedir pizza para recoger mas Postre
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Recoger" text button
    And I wait for 2000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 2000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80124"
    And I wait for 2000 milliseconds
    And I click on "idRecoger" button
    And I wait for 5000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    And I go to the home page
    And I click on "Postres" button
    And I wait for 1000 milliseconds
    And I click on "Brownkie" class with link "PizzaContent"
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 1000 milliseconds
    And I click on "Añadir postre" text button
    And I wait for 1000 milliseconds
    Then I should see an alert saying "Hemos añadido este postre a tu pedido"
    And I restart session





  Scenario: Pedir pizza para recoger mas bebida
    Given I go to the home page
    And I wait for 1000 milliseconds
    And I click on "Pizzas" href with link "/carta-de-pizzas"
    And I wait for 1000 milliseconds
    And I click on "Hawaina Cripy" class with link "PizzaContent  "
    And I wait for 1000 milliseconds
    And I click on "Recoger" text button
    And I wait for 2000 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 2000 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80124"
    And I wait for 2000 milliseconds
    And I click on "idRecoger" button
    And I wait for 5000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 1000 milliseconds
    And I go to the home page
    And I click on "Bebidas" button
    And I wait for 1000 milliseconds
    And I click on "Brownkie" class with link "PizzaContent"
    And I wait for 1000 milliseconds
    And I click on "Añadir" text button
    And I wait for 1000 milliseconds
    And I click on "Añadir bebida" text button
    And I wait for 10000 milliseconds
    Then I should see an alert saying "Hemos añadido esta bebida a tu pedido"
    And I restart session






