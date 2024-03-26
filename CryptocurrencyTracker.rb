require 'httparty'

# get the data from the API
response = HTTParty.get('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd')

# parse the JSON response
coins = JSON.parse(response.body)

# sort the coins by market cap
coins.sort_by! { |coin| -coin["market_cap"] }

# retrieve the top five coins by market cap
coins.first(5).each do |coin|
  puts "Name of coin: #{coin["name"]}"
  puts "Market cap: #{coin["market_cap"]}"
  puts "Current price: #{coin["current_price"]}", "\n"
end
