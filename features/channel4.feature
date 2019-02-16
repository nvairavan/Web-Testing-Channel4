Feature: Channel4 Login

  Scenario: login with valid credentials
    Given I am on the homepage
    And I click on Sign In
    When I fill in Email
    And I fill in Password
    And I click Sign In
    Then I should be on the MyUser page

  Scenario: Not entering any email address or password
    Given I am on the homepage
    And I click on Sign In
    And I enter no email address details
    And I enter no password details
    When I try to Sign In
    Then I receive an error saying "Please enter your email address & password"

  Scenario: Not entering any email address
    Given I am on the homepage
    And I click on sign in
    And I enter no email address details
    And I enter password details
    When I try to sign in
    Then I receive an error saying "Please enter your email address"

  Scenario: Not entering any password
    Given I am on the homepage
    And I click on sign in
    And I enter email address details
    And I enter no password details
    When I try to sign in
    Then I receive an error saying "Please enter your Password"

  Scenario: Entering incorrect email address and credentials shows an error
    Given I am on the homepage
    And I click on sign in
    And I enter incorrect email address details
    And I enter correct password details
    When I try to signin
    Then I receive an error saying "Your email or password is incorrect."

  Scenario: Entering incorrect password and credentials shows an error
    Given I am on the homepage
    And I click on sign in
    And I enter correct email address details
    And I enter incorrect password details
    When I try to signin
    Then I receive an error saying "Your email or password is incorrect."
