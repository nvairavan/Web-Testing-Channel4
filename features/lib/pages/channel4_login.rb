require 'capybara/dsl'

class Channel4SignInPage
  include Capybara::DSL

  attr_accessor :error1, :error2, :error3

  EMAIL_FIELD_ID = 'capture_first_signIn_emailAddress'
  PASSWORD_FIELD_ID = 'capture_first_signIn_password'
  SIGN_IN_BUTTON = 'capture_first_signIn_signInButton'
  EMAIL_ERROR_MESSAGE = 'Please enter your email address'
  PASSWORD_ERROR_MESSAGE = 'Please enter your password'
  INCORRECT_ERROR_MESSAGE = 'Your email or password is incorrect.'

  def fill_in_email(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def click_signin_button
    click_button(SIGN_IN_BUTTON)
  end

  def check_email_error_message
    has_content?(EMAIL_ERROR_MESSAGE)
  end

  def check_password_error_message
    has_content?(PASSWORD_ERROR_MESSAGE)
  end

  def check_incorrect_error_message
    has_content?(INCORRECT_ERROR_MESSAGE)
  end
end
