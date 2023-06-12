require 'nokogiri'
require 'open-uri'

# URL of the website to scrape
url = "https://flatironschool.com/"

# Fetch the HTML content of the web page
html = URI.open(url)

# Create a Nokogiri document from the HTML content
doc = Nokogiri::HTML(html)

# Use Nokogiri methods to extract desired data from the document
# Here's an example of extracting all the links on the page
links = doc.css('a').map { |link| link['href'] }

# Print the extracted links
links.each do |link|
  puts link
end
