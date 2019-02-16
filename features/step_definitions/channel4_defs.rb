Given("I am on the homepage") do
  @channel4.channel4_homepage.visit_homepage
end

Given("I click on Sign In") do
  @channel4.channel4_homepage.click_signin_link
end
When("I fill in Email") do
  @channel4.channel4_login.fill_in_email(@email)
end

When("I fill in Password") do
  @channel4.channel4_login.fill_in_password(@password)
end

When("I click Sign In button") do
  @channel4.channel4_login.click_signin_button
end

Then("I should be on the MyUser page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter no email address details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter no password details") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I try to Sign In button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an error saying Please enter your email address & password") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click on sign in") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter password details") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I try to sign in button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an error saying Please enter your email address") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter email address details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an error saying Please enter your Password") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter incorrect email address details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter correct password details") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I try to signin button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an error saying Your email or password is incorrect.") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter correct email address details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter incorrect password details") do
  pending # Write code here that turns the phrase above into concrete actions
end