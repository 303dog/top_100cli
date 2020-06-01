require 'pry'
require 'nokogiri'
require 'open-uri'

class Schedule::Scraper


  def get_page
    Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))
  end

  def scrape_movies_index
      get_page.css(".lister-item.mode-detail").collect do |node|
        title = node.css("h3").text.strip.chomp("\n").strip.gsub("\n","").gsub("  "," ")
        length = node.css(".runtime").text
        genre =   node.css(".genre").text.strip
        summary =  node.css(".lister-item-content p")[1].text.strip
        rank = node.css(".ipl-rating-star__rating").first.text
        cast = node.css(".text-muted.text-small")[1].text.split("Stars:")[1].strip.gsub("\n","").gsub("  "," ")
        director = node.css(".text-muted.text-small")[1].text.split("Stars:")[0].strip.chomp("|").strip.gsub("\n","").gsub("  "," ") 
      Schedule::Movie.new(title, length, genre, summary, rank, cast, director)
    end
  end
end

 
#  def make_movie(i)
#    puts ""
#    puts "---------------##{i} of the Top 100----------------"
#    movie = scrape_movies_index[i-=1]
#    puts ""
#    Pry::ColorPrinter.pp(movie)
#  end
#end



