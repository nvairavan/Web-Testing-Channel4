Feature: Channel4 Login and Signup

  Scenario: login with valid credentials
    Given I am on the homepage
    And I click on sign in link
    When I fill in Email
    And I fill in Password
    And I click Sign In button
    Then I should be on the MyUser page

  Scenario: Not entering any email address or password
    Given I am on the homepage
    And I click on sign in link
    And I enter no email address details
    And I enter no password details
    When I click to Sign In button
    Then I receive an error saying Please enter your email address & password

  Scenario: Not entering any email address
    Given I am on the homepage
    And I click on sign in link
    And I enter password details but not email address
    When I click to sign in button
    Then I receive an error saying Please enter your email address

  Scenario: Not entering any password
    Given I am on the homepage
    And I click on sign in link
    And I enter email address details but not password
    When I click to sign in button
    Then I receive an error saying Please enter your Password

  Scenario: Entering incorrect email address
    Given I am on the homepage
    And I click on sign in link
    And I enter incorrect email address details
    And I enter correct password details
    When I click to signin button
    Then I receive an error saying Your email or password is incorrect.

  Scenario: Entering incorrect password
    Given I am on the homepage
    And I click on sign in link
    And I enter correct email address details
    And I enter incorrect password details
    When I click to signin button
    Then I receive an appropriate error.

  Scenario: Entering incorrect email and password
    Given I am on the homepage
    And I click on sign in link
    And I enter incorrect email address and password
    When I click to signin button
    Then I receive an error for incorrect email and password.

  @signup
  Scenario: Signing up with correct details
    Given I access registration page
    And I fill in all textbox details correctly
    And I use random generator for postcode and click find address button
    And I select random option from drop down
    When I click on register me button
    Then I should see Registration Complete.