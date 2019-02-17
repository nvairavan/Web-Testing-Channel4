Before do
  Dotenv.load('.env')
  @channel4 = Channel4Site.new
  @email = ENV['EMAIL']
  @password = ENV['PASSWORD']
end

Before('@signup') do
  @random_postcode = RandomPostcodes.new.random_array(1)
  @postcode = @random_postcode[0]
end
