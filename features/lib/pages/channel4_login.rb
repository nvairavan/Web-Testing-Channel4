require 'capybara/dsl'

class Channel4SignInPage
  include Capybara::DSL

  EMAIL_FIELD_ID = 'capture_first_signIn_emailAddress'
  PASSWORD_FIELD_ID = 'capture_first_signIn_password'
  SIGN_IN_BUTTON = 'capture_first_signIn_signInButton'

  def fill_in_email(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def click_signin_button
    click_button(SIGN_IN_BUTTON)
  end
end
