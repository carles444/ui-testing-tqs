Feature: Tests a page LogIn
  It will test the correct and incorrect login

  Scenario: Can see LogIn and SignUp section
    Given I go to the home page
    When I click on "Menu" button
    And I wait for 500 milliseconds
    And I click on "Sign In" href with link "/account/"
    Then I should see a "Login" text

  Scenario: Bad email LogIn test
    Given I go to the home page
    #When I wait for 5000 milliseconds
    #And I close "close" window
    And I click on "Menu" button
    And I wait for 500 milliseconds
    And I click on "Sign In" href with link "/account/"
    And I wait for 1000 milliseconds
    And I write on form "CustomerEmail" the text "carlesandreu4@gmail.com"
    And I wait for 500 milliseconds
    And I write on form "CustomerPassword" the text "patata"
    And I wait for 500 milliseconds
    And I submit "customer_login" form
    And I wait for 500 milliseconds
    Then I should see a "Incorrect email or password." text
