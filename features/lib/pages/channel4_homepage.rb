require 'capybara/dsl'

class Channel4HomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.channel4.com/'
  SIGNINPAGE_LINK = '//*[@id="header"]/div/div/header/nav/ul/li[2]/a'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_signin_link
    find(:xpath, SIGNINPAGE_LINK).click
  end
end
