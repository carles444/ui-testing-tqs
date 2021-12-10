Feature: Tests a page SignUp
  It will test the correct and incorrect SignUp

  Scenario: Bad SignUp (invalid email)
    Given I go to the home page
    When I click on "Menu" button
    And I wait for 500 milliseconds
    And I click on "Sign In" href with link "/account/"
    And I click on "Create Account" href with link "/account/register"
    And I write on form "FirstName" the text "lsldflk"
    And I wait for 500 milliseconds
    And I write on form "LastName" the text "asdfdsf"
    And I wait for 500 milliseconds
    And I write on form "Email" the text "asdfdsf@sdfasdf"
    And I wait for 500 milliseconds
    And I write on form "CreatePassword" the text "asdfdsf"
    And I wait for 500 milliseconds
    And I submit "create_customer" form
    And I wait for 500 milliseconds
    Then I should see a "Email is invalid." text
    Then I should see a "create_customer" form

  Scenario: Registered account
    Given I go to the home page
    When I click on "Menu" button
    And I wait for 500 milliseconds
    And I click on "Sign In" href with link "/account/"
    And I click on "Create Account" href with link "/account/register"
    And I write on form "FirstName" the text "Carles"
    And I wait for 500 milliseconds
    And I write on form "LastName" the text "Andreu"
    And I wait for 500 milliseconds
    And I write on form "Email" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on form "CreatePassword" the text "patata"
    And I wait for 500 milliseconds
    And I submit "create_customer" form
    And I wait for 500 milliseconds
    Then I should see a "This email address is already associated with an account. If this account is yours, you can " text

  Scenario: Correct SignUp
    Given I go to the home page
    When I click on "Menu" button
    And I wait for 500 milliseconds
    And I click on "Sign In" href with link "/account/"
    And I click on "Create Account" href with link "/account/register"
    And I write on form "FirstName" the text "Carles"
    And I wait for 500 milliseconds
    And I write on form "LastName" the text "Andreu"
    And I wait for 500 milliseconds
    And I write on form "Email" the text "carlesandreu1@hotmail.com"
    And I wait for 500 milliseconds
    And I write on form "CreatePassword" the text "patata"
    And I wait for 500 milliseconds
    And I submit "create_customer" form
    And I wait for 500 milliseconds
    Then I should see a "            Tinker Watches" button
    When I click on "Menu" button
    And I wait for 500 milliseconds
    Then I should see a "Account" button
