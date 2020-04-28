require 'pry'
require 'nokogiri'
require 'open-uri'

 class Schedule::Scraper

  def get_page
     doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))
  end

  def scrape_movies_index
      get_page.css(".lister-item.mode-detail").collect do |node|
      {
        TITLE:    node.css("h3").text.strip.chomp("\n").strip.gsub("\n","").gsub("  "," "),
        LENGTH: node.css(".runtime").text,
        GENRE:    node.css(".genre").text.strip,
        SUMMARY:  node.css(".lister-item-content p")[1].text.strip,
        RANK:  node.css(".ipl-rating-star__rating").first.text,
        CAST:     node.css(".text-muted.text-small")[1].text.split("Stars:")[1].strip.gsub("\n","").gsub("  "," "),
        DIRECTORY: node.css(".text-muted.text-small")[1].text.split("Stars:")[0].strip.chomp("|").strip.gsub("\n","").gsub("  "," ")
      }
    end
  end
  
  def make_movies(i)
    puts ""
    puts "---------------##{i} of the Top 100----------------"
    movie = scrape_movies_index[i-=1]
    puts ""
    Pry::ColorPrinter.pp(movie)
  end
end