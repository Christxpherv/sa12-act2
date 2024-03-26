require 'httparty'

# get the data from the API
url = HTTParty.get('https://worldtimeapi.org/api/timezone/Europe/London')
# parse the JSON response
area = JSON.parse(url.body)

# print out the timezone and current time
puts "The current time in #{area["timezone"]} is #{area["datetime"]}"
