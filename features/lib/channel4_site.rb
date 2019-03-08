require_relative 'pages/channel4_homepage'

class Channel4Site
  def channel4_homepage
    Channel4HomePage.new
  end

  def channel4_login
    Channel4SignInPage.new
  end

  def channel4_signup
    Channel4SignUpPage.new
  end
end
