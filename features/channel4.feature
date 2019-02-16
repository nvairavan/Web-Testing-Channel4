Feature: Channel4 Login

  Scenario: login with valid credentials
    Given I am on the login page
    When I fill in "Email" with "test@test.com"
    And I fill in "Password" with "test123pass"
    And I press "Login"
    Then I should be on the users home page
    And I should see "Login successful"

