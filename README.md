# Web-Testing-Channel4

## Description
  Chanel 4 User Interface (UI) Testing project using Cucumber and Gherkin. Cucumber is a BDD (Behaiviour Driven Development) tool for creating executable specifications. It is written in plain text and uses the Gherkin Syntax (Given, When, Then). For this project I created possible scenarios that a user may do on login and sign up page and created automated tests to perform those scenarios.

  I also implemented Random Postcode generator from my previous project to fill in postcode field when signing up.


## Gems Required
  ````
  Cucumber
  Capybara
  RSpec
  ````

## Clone repo
 ``` git clone https://github.com/nvairavan/Web-Testing-Channel4.git```

## How to use
In the feature file called channel4.feature, I create a scenario using Gherkin Syntax (Given, When, Then).
````
    For Example, 

    Scenario: login with valid credentials
      Given I am on the homepage
      And I click on sign in link
      When I fill in Email
      And I fill in Password
      And I click Sign In button
      Then I should be on the MyUser page
````
Run Cucumber in terminal. It should come up with:

You can implement step definitions for undefined steps with these snippets:
````
  Given("I am on the homepage") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  Given("I click on sign in link") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  When("I fill in Email") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  When("I fill in Password") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  When("I click Sign In button") do
    pending # Write code here that turns the phrase above into concrete actions
  end

  Then("I should be on the MyUser page") do
    pending # Write code here that turns the phrase above into concrete actions
  end
````
Add this to channel4_defs.rb. This is where you will create your tests for the site.

Since I approached the project with Page Object Model, I created .rb file each page I am testing on. Then I created methods to retrieve those elements using Capybara.

Also I created a before hooks for creating an instance of the superclass and for generating a random postcode.
```
  Before('@signup') do
    @random_postcode = RandomPostcodes.new.random_array(1)
    @postcode = @random_postcode[0]
  end
```
Run cucumber to see if the tests has passed or failed.

## Tests that will occur:
````
  Scenario: login with valid credentials
  Scenario: Not entering any email address or password
  Scenario: Not entering any email address
  Scenario: Not entering any password
  Scenario: Entering incorrect email address
  Scenario: Entering incorrect email and password
  Scenario: Signing up with correct details
  Scenario: Trying to signup without any input
````