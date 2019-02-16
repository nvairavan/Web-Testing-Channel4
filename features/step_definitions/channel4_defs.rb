Given("I am on the homepage") do
  @channel4.channel4_homepage.visit_homepage
end

Given("I click on sign in link") do
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
  expect(@channel4.channel4_login.header_title).to eq('My4')
end

Given("I enter no email address details") do
  @channel4.channel4_login.fill_in_email('')
end

Given("I enter no password details") do
  @channel4.channel4_login.fill_in_password('')
end

When("I click to Sign In button") do
  @channel4.channel4_login.click_signin_button
end

Then("I receive an error saying Please enter your email address & password") do
  expect(@channel4.channel4_login.check_email_error_message).to be true
  expect(@channel4.channel4_login.check_password_error_message).to be true
end

Given("I enter password details but not email address") do
  @channel4.channel4_login.fill_in_email('')
  @channel4.channel4_login.fill_in_password(@password)
end

When("I click to sign in button") do
  @channel4.channel4_login.click_signin_button
end

Then("I receive an error saying Please enter your email address") do
  expect(@channel4.channel4_login.check_email_error_message).to be true
end

Given("I enter email address details but not password") do
  @channel4.channel4_login.fill_in_email(@email)
  @channel4.channel4_login.fill_in_password('')
end

Then("I receive an error saying Please enter your Password") do
  expect(@channel4.channel4_login.check_password_error_message).to be true
end

Given("I enter incorrect email address details") do
  @channel4.channel4_login.fill_in_email('london@123.com')
end

Given("I enter correct password details") do
  @channel4.channel4_login.fill_in_password(@password)
end

When("I click to signin button") do
  @channel4.channel4_login.click_signin_button
end

Then("I receive an error saying Your email or password is incorrect.") do
  expect(@channel4.channel4_login.check_incorrect_error_message).to be true
end

Given("I enter correct email address details") do
  @channel4.channel4_login.fill_in_email(@email)
end

Given("I enter incorrect password details") do
  @channel4.channel4_login.fill_in_password('123456')
end

Then("I receive an appropriate error.") do
  expect(@channel4.channel4_login.check_incorrect_error_message).to be true
end

Given("I enter incorrect email address and password") do
  @channel4.channel4_login.fill_in_email('123456@abc.com')
  @channel4.channel4_login.fill_in_password('abcdef')
end

Then("I receive an error for incorrect email and password.") do
  expect(@channel4.channel4_login.check_incorrect_error_message).to be true
end