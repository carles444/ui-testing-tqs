Feature: Tests a page using Selenium WebDriver
  In order to evaluate Selenium Framework
  As a developer
  I want to interact with my web

  Scenario: My website can be browsed
    When I go to the home page
    Then I should see a "Menú" button

  Scenario: My website has a "ACTUALIZACIONES RECIENTES" section
    Given I go to the home page
    When I click on "Aceptar todo" button
    Then I should see a "ACTUALIZACIONES RECIENTES" text
    And I take a screenshot with filename "ACTUALIZACIONES RECIENTES"
