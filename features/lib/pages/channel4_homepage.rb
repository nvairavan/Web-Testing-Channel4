require 'capybara/dsl'

class Channel4HomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.channel4.com/'
  SIGNINPAGE_BUTTON = '//*[@id="header"]/div/div/header/nav/ul/li[2]/a'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_signin_button
    find(:xpath, SIGNINPAGE_BUTTON).click
  end
end
