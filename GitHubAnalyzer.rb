require 'httparty'

url = HTTParty.get('https://api.github.com/users/kbridson/repos')
repos = JSON.parse(url.body)

# iterate through each repo and display the name, star count, and fork count
repos.each do |repo|
  puts "Name of repo: #{repo["name"]}"
  puts "Star count: #{repo["stargazers_count"]}"
  puts "Fork count: #{repo["forks_count"]}", "\n"
end

# find the repo with the highest star count
highest = repos.max_by{|repo| repo["stargazers_count"]}
# display the name, description, star count, and URL of the repo with the highest star count
puts "Name of the highest repo: #{highest["name"]}"
puts "Description: #{highest["description"]}"
puts "Number of stars: #{highest["stargazers_count"]}"
puts "URL of the repo: #{highest["html_url"]}"
