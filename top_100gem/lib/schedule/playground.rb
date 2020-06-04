require 'pry'
#require 'nokogiri'
#require 'open-uri'
#



#class Playground
#
#    attr_accessor :title, :length, :genre, :summary, :rank, :cast, :director
#
#    @@all = []
#
#    def initialize(title, length, genre, summary, rank, cast, director)
#        @title = title
#        @length = length
#        @genre = genre
#        @summary = summary
#        @rank = rank
#        @cast = cast
#        @director = director
#        @@all << self
#        binding.pry
#    end
#
#    def get_page
#        Nokogiri::HTML(open("https://www.imdb.com/list/ls055592025/"))
#        binding.pry
#      end
#    
#    def scrape_movies_index
#      get_page.css(".lister-item.mode-detail").collect do |node|
#      {
#          TITLE:    node.css("h3").text.strip.chomp("\n").strip.gsub("\n","").gsub("  "," "),
#          LENGTH:   node.css(".runtime").text,
#          GENRE:    node.css(".genre").text.strip,
#          SUMMARY:  node.css(".lister-item-content p")[1].text.strip,
#          RANK:     node.css(".ipl-rating-star__rating").first.text,
#          CAST:     node.css(".text-muted.text-small")[1].text.split("Stars:")[1].strip.gsub("\n","".gsub("  "," "),
#          DIRECTOR: node.css(".text-muted.text-small")[1].text.split("Stars:")[0].strip.chomp("|").strip.gsub("\n","").gsub#("  "," "))}
#        binding.pry
#         # Movie.new(doc)
#        end
#    end

 #     def movie_display
 #       puts ""
 #       puts "The title you chose is #{@title}."
 #       puts "#{@title} is ranked number ##{@rank} on the ImbD.com website."
 #       puts "#{@title} is considered a #{@genre}."
 #       puts "This movie is #{@length} mins long."
 #       puts "#{@title} was directed by #{@director}."
 #       puts "Memebers of the cast include #{@cast}."
 #       puts "A brief summary: #{@summary}."
 #       puts ""
 #       binding.pry
 #       Pry::ColorPrinter
 #   end


 #       def user_m(i)
 #           input = gets.strip.to_i
 #           movie = @@all[i-=1]
 #           puts ""
 #           Pry::ColorPrinter.pp(movie)
 #       end 
 #   end
class Playground

    def hello
        puts "why cant i figure this out!"
        
        #m = Martha
        #puts "Hello #{m}!"
    end

end