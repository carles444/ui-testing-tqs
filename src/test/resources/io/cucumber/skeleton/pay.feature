Feature: tests pay feature
  And I restart session

  Scenario: test pay cart with promotions, with card
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
    And I wait for 1000 milliseconds
    And I click by css selector "div[class='icon'] "
    And I wait for 1000 milliseconds
    And I click on "Continuar" text button
    And I wait for 1000 milliseconds
    And I click on "Aplicar" text button
    And I wait for 4000 milliseconds
    And I click on "Continuar" text button
    And I wait for 1000 milliseconds
    And I write on input name "nombre" the text "Carlos"
    And I write on input name "apellido" the text "Garay"
    And I write on input id "day" the text "25"
    And I write on input id "month" the text "10"
    And I write on input id "year" the text "1997"
    And I write on input name "tlf" the text "671953609"
    And I write on input name "email" the text "charly251097@gmail.com"
    And I click by css selector "label[for='tarjeta'] "
    Then I should see a "Datos de envío y pago" text
    And I wait for 5000 milliseconds
    And I restart session

  Scenario: test pay cart whithout promotions, whith cash
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
    And I wait for 1000 milliseconds
    And I click by css selector "div[class='icon'] "
    And I wait for 1000 milliseconds
    And I click on "Continuar" text button
    And I wait for 1000 milliseconds
    And I click on "Continuar" text button
    And I wait for 1000 milliseconds
    And I click by css selector "div[class='skip'] a"
    And I wait for 1000 milliseconds
    And I write on input name "nombre" the text "Carlos"
    And I write on input name "apellido" the text "Garay"
    And I write on input id "day" the text "25"
    And I write on input id "month" the text "10"
    And I write on input id "year" the text "1997"
    And I write on input name "tlf" the text "671953609"
    And I write on input name "email" the text "charly251097@gmail.com"
    Then I should see a "Datos de envío y pago" text
    And I restart session





  Scenario: test pay cart whit deleting somthing
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
    And I click by css selector "li[data-name='Parmesana Carbonara']"
    And I wait for 500 milliseconds
    And I click by css selector "li[data-name='Parmesana Carbonara'] button[class='red add-pizza']"
    And I wait for 1000 milliseconds
    And I wait for 2000 milliseconds
    And I click on "Añadir esta pizza" text button
    And I wait for 2000 milliseconds
    And I click by css selector "div[class='icon'] "
    And I click on "Continuar" text button
    And I wait for 1000 milliseconds
    And I click by css selector "span[class='fr ico ico-trash-black']"
    And I wait for 1000 milliseconds
    And I click on "Si" text button
    And I wait for 1000 milliseconds
    And I click on "Continuar" text button
    And I wait for 1000 milliseconds
    And I click by css selector "div[class='skip'] a"
    And I wait for 1000 milliseconds
    And I write on input name "nombre" the text "Carlos"
    And I write on input name "apellido" the text "Garay"
    And I write on input id "day" the text "25"
    And I write on input id "month" the text "10"
    And I write on input id "year" the text "1997"
    And I write on input name "tlf" the text "671953609"
    And I write on input name "email" the text "charly251097@gmail.com"
    And I wait for 2000 milliseconds
    Then I should see a "Datos de envío y pago" text
    And I restart session
