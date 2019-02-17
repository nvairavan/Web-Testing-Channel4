require 'capybara/dsl'
require_relative '../randomGenerator/Generator'

class Channel4SignUpPage
  include Capybara::DSL

  SIGNUPPAGE_URL = 'https://4id.channel4.com/registration'
  EMAIL_FIELD_ID = 'capture_traditionalRegistration_tradReg_emailAddress'
  CONFIRM_EMAIL_FIELD_ID = 'capture_anyRegistration_tradReg_confirmEmailAddress'
  FIRSTNAME_FIELD_ID = 'capture_traditionalRegistration_tradReg_firstName'
  LASTNAME_FIELD_ID = 'capture_traditionalRegistration_tradReg_lastName'
  PASSWORD_FIELD_ID = 'capture_traditionalRegistration_tradReg_password'
  CONFIRM_PASSWORD_FIELD_ID = 'capture_traditionalRegistration_tradReg_passwordConfirm'
  DOB_DATE_DROPDOWN_ID = 'capture_traditionalRegistration_tradReg_birthdate_dateselectday'
  DOB_MONTH_DROPDOWN_ID = 'capture_traditionalRegistration_tradReg_birthdate_dateselectmonth'
  DOB_YEAR_DROPDOWN_ID = 'capture_traditionalRegistration_tradReg_birthdate_dateselectyear'
  GENDER_DROPDOWN_ID = 'capture_traditionalRegistration_tradReg_gender'
  POSTCODE_FIELD_ID = 'postcode'
  FIND_ADDRESS_BUTTON_ID = 'all4id-registration-address-finder-find'
  ADDRESS_DROPDOWN_ID = 'all4id-address-finder-select'
  REGISTER_ME_BUTTON_ID = 'capture_traditionalRegistration_tradRegSubmitButton'
  HEADER_CSS = 'h1'

  def visit_signup_page
    visit(SIGNUPPAGE_URL)
  end

  def fill_in_email(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def fill_in_confirmation_email(email)
    fill_in(CONFIRM_EMAIL_FIELD_ID, with: email)
  end

  def fill_in_firstname(fname)
    fill_in(FIRSTNAME_FIELD_ID, with: fname)
  end

  def fill_in_lastname(lname)
    fill_in(LASTNAME_FIELD_ID, with: lname)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def fill_in_confirmation_password(password)
    fill_in(CONFIRM_PASSWORD_FIELD_ID, with: password)
  end

  def select_date(date)
    select(date, from: DOB_DATE_DROPDOWN_ID).select_option
  end

  def select_month(month)
    select(month, from: DOB_MONTH_DROPDOWN_ID).select_option
  end

  def select_year(year)
    select(year, from: DOB_YEAR_DROPDOWN_ID).select_option
  end

  def select_gender(gender)
    select(gender, from: GENDER_DROPDOWN_ID).select_option
  end

  def fill_in_postcode(postcode)
    fill_in(POSTCODE_FIELD_ID, with: postcode)
  end

  def click_find_address_button
    click_button(FIND_ADDRESS_BUTTON_ID)
  end

  def select_address(address)
    select(address, from: ADDRESS_DROPDOWN_ID).select_option
  end

  def click_register_button
    click_button(REGISTER_ME_BUTTON_ID)
  end

  def header_title
    find(:css, HEADER_CSS).text
  end
end
