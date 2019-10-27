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
        title:    node.css("h3").text.strip.chomp("\n").strip,
        run_time: node.css(".runtime").text,
        genre:    node.css(".genre").text.strip,
        summary:  node.css(".lister-item-content p")[1].text.strip,
        ranking:  node.css(".ipl-rating-star__rating").first.text,
        cast:     node.css(".text-muted.text-small")[1].text.split("Stars:")[1].strip,
        director: node.css(".text-muted.text-small")[1].text.split("Stars:")[0].strip.chomp("|").strip
      }
    end
  end
  
  def make_movies(i)
    puts ""
    puts "---------------##{i} of the Top 100----------------"
    movie = scrape_movies_index[i-=1]
    puts ""
    puts y movie
  end
end