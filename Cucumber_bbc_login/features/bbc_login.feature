Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I recieve an error for not finding the account

  Scenario: Input a username with a password that is too short
    Given I access the bbc login page
    And I input incorrect username details
    And I input a password that is too short
    When I try to login
    Then I receive an error for short password

  Scenario: Input a username without a password
    Given I access the bbc login page
    And I input correct username
    When I try to login
    Then I receive an error saying the password details is empty

  Scenario: Input a username that includes illegal characters
    Given I access the bbc login page
    And I input wrong characters in username
    And I input incorrect password details
    When I try to login
    Then I receive an error saying the username is incorrect