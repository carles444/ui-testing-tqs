Feature: Tests account

  Scenario: test data is correct
    Given I go to the home page
    When I click by css selector " span[class='name'] "
    And I write on input name "usuario" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "torreblanca"
    And I wait for 500 milliseconds
    And I click on "Ok" text with id "btnLoginMenu"
    And I wait for 1500 milliseconds
    Then I should see a "CARRER SANT ENRIC, 17" text
    Then I should see a "696526476" text
    Then I should see a "carlesandreu4@gmail.com" text
    When I click on "Mis Datos" text with id "AmiDominosDatos"
    Then I should see a "Carles" text
    Then I should see a "Andreu" text
    Then I should see a "9 de febrero de 2000" text
    Then I should see a "•••••••••" text
    When I click by css selector " span[class='name'] "
    And I click on "Cerrar sesión" text with id "btCerrarSesion"
    And I click on "Si" text with id "yes"


  Scenario: test change surname
    Given I go to the home page
    And I wait for 1500 milliseconds
    When I click by css selector " span[class='name'] "
    And I write on input name "usuario" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "torreblanca"
    And I wait for 500 milliseconds
    And I click on "Ok" text with id "btnLoginMenu"
    And I wait for 1500 milliseconds
    And I click on "Mis Datos" text with id "AmiDominosDatos"
    And I click on "Editar datos" text with id "editarDatos"
    And I delete input name "apellido" text
    And I write on input name "apellido" the text "Torreblanca"
    And I write on input name "_password" the text "torreblanca"
    And I write on input name "_repeat_password" the text "torreblanca"
    And I click on "Guardar cambios" text with id "savePersonalData"
    And I click on "Mis Datos" text with id "AmiDominosDatos"
    Then I should see a "Torreblanca" text
    And I wait for 1500 milliseconds
    And I click on "Mis Datos" text with id "AmiDominosDatos"
    And I click on "Editar datos" text with id "editarDatos"
    And I delete input name "apellido" text
    And I write on input name "apellido" the text "Andreu"
    And I write on input name "_password" the text "torreblanca"
    And I write on input name "_repeat_password" the text "torreblanca"
    And I click on "Guardar cambios" text with id "savePersonalData"
    And I wait for 1500 milliseconds
    And I click on "Mis Datos" text with id "AmiDominosDatos"
    Then I should see a "Andreu" text
    When I click by css selector " span[class='name'] "
    And I click on "Cerrar sesión" text with id "btCerrarSesion"
    And I click on "Si" text with id "yes"

  Scenario: test add new direction
    Given I go to the home page
    And I wait for 1500 milliseconds
    When I click by css selector " span[class='name'] "
    And I write on input name "usuario" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on input name "password" the text "torreblanca"
    And I wait for 500 milliseconds
    And I click on "Ok" text with id "btnLoginMenu"
    And I wait for 1500 milliseconds
    And I click on "Mis Datos" text with id "AmiDominosDatos"
    And I click on "Añadir nueva dirección" text with id "addAddress"
    And I wait for 1500 milliseconds
    And I select name "IdProvinciaSeleccionada" value "8"
    And I wait for 500 milliseconds
    And I select name "IdLocalidadSeleccionada" value "80266"
    And I wait for 500 milliseconds
    And I write on input id "tags" the text "carrer prat de la riba"
    And I wait for 500 milliseconds
    And I write on input id "Direccion_NumeroCalle" the text "63"
    And I wait for 500 milliseconds
    And I write on input name "Direccion_NumeroPiso" the text "4"
    And I wait for 500 milliseconds
    And I write on input name "Direccion_NumeroPuerta" the text "b"
    And I wait for 500 milliseconds
    And I click on "Guardar" text with id "GuardarDireccion"
    And I wait for 4000 milliseconds
    When I click on "Mis Datos" text with id "AmiDominosDatos"
    Then I should see a "CARRER PRAT DE LA RIBA" text
    When I click by css selector " span[class='name'] "
    And I click on "Cerrar sesión" text with id "btCerrarSesion"
    And I click on "Si" text with id "yes"
