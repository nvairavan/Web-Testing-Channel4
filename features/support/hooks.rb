Before do
  Dotenv.load('.env')
  @channel4 = Channel4Site.new
  @email = ENV['EMAIL']
  @password = ENV['PASSWORD']
end