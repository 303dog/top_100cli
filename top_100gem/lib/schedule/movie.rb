require 'pry'


class Schedule::Movie
#class Movie
    attr_accessor :title, :length, :genre, :summary, :ranking, :cast, :director

    @@all = []

 #   def scrape_movies_index
 #       get_page.css(".lister-item.mode-detail").collect do |node|
 #       {
 #         TITLE:    node.css("h3").text.strip.chomp("\n").strip.gsub("\n","").gsub("  "," "),
 #         LENGTH:   node.css(".runtime").text,
 #         GENRE:    node.css(".genre").text.strip,
 #         SUMMARY:  node.css(".lister-item-content p")[1].text.strip,
 #         RANK:     node.css(".ipl-rating-star__rating").first.text,
 #         CAST:     node.css(".text-muted.text-small")[1].text.split("Stars:")[1].strip.gsub("\n","").#gsub("  "," "),
 #         DIRECTOR: node.css(".text-muted.text-small")[1].text.split("Stars:")[0].strip.chomp("|").#strip.gsub("\n","").gsub("  "," ")
 #       }  
 #       
 #     end
    

   # def initialize(scrape_movies_index, get_page)
   #     @scrape_movies_index = scrape_movies_index
   #     @get_page = get_page
   #     @@all << self
   #    # binding.pry
   # end

    def title
        @title ||= node.css("h3").text.strip.chomp("\n").strip.gsub("\n","").gsub("  "," ")
    end

    def length
        @length ||= node.css(".runtime").text
    end

    def genre
        @genre ||= node.css(".genre").text.strip
    end

    def ranking
        @ranking ||= node.css(".ipl-rating-star__rating").first.text
    end

    def cast 
        @cast ||= node.css(".text-muted.text-small")[1].text.split("Stars:")[1].strip.gsub("\n","").gsub("  "," ")
    end

    def director
        @director ||= node.css(".text-muted.text-small")[1].text.split("Stars:")[0].strip.chomp("|").strip.gsub("\n","").gsub("  "," ")
    end




    def make_movie(i)

        puts ""
        puts "The title you chose is #{@title}."
        puts "#{@title} is ranked number ##{@ranking} on the ImbD.com website."
        puts "#{@title} is considered a #{@genre}."
        puts "This movie is #{@length} mins long."
        puts "#{@title} was directed by #{@director}."
        puts "Memebers of the cast include #{@cast}."
        puts "A brief summary: #{@summary}."
        puts ""
    end
    
end
    
    
    
    
    #end 
 
 # movie_1 = Movie.new("Top Gun", 97, "comedy", "a story about a pilot who has a big ego", 1, "bob, #mary, Johyn, Marhta", "Ted")
#
# movie_1.movie_display



#    def make_movie(i)
#        puts ""
#        puts "---------------##{i} of the Top 100----------------"
#        movie = scrape_movies_index[i-=1]
#        puts ""
#        Pry::ColorPrinter.pp(movie)
#    end

#    def self.movie_data#(hash)
#        #binding.pry
#        movie_data.each do |title, length, rank, summary, genre, director, cast|
#            scrape_movies_index
#        
#        end
#    end
#
#   # def self.find_flix(choice)
#   #     binding.pry
#   #     index = choice.to_i - 1
#   #     all[index] 
#   # end
#
#    def self.all 
#        @@all
#    end
#
#end
#    def make_movie(i)
#        puts ""
#        puts "---------------##{i} of the Top 100----------------"
#        movie = scrape_movies_index[i-=1]
#        puts ""
#        Pry::ColorPrinter.pp(movie)
#    end

  #  movie_1 = Movie.new("Top Gun", 97, "comedy", "a story about a pilot who has a big ego", 1, "bob, #mary, Johyn, Marhta", "Ted")
#
  #  movie_1.test



    #    else if 2 == input
    #    puts "These are not the best movies but #they're not the worst"
    #    puts ""
    #    (26..50).each    {|i| print "#{i} "}
    #    puts ""
    #    (51..74).each    {|i| print "#{i} "}
    #    else if 3 == input
    #        puts "These are the worst of the #best!"
    #        puts ""
    #    (75..100).each   {|i| print "#{i} "}
    
    
       # end 
#   # end
#
#
#    def top_25              
#        puts "Top 25 films by rank"
#        puts ""
#        (01..25).each   {|i| print "#{i} "}
#    end
#
#end


#    
#    def create_movie_by_name(input)                                             
#        Schedule::Scraper.new.make_movie(input)
#    end
#
#    def self.create_from_collection
#        self.scrape_movies_index
#    end
#
#    def self.all
#        @@all 
#    end
#
#    def movie_name(input)
#        @title
#    end
#
#    
#end

#def self.option_1(input)        ####
    #    if 1 == input
    #    top_25
    #    else if 2 == input
    #    middle
    #    else if 3 == input
    #    last_place
    #    end
    #    end
    #    end
    #end

    #def top_25(input)                  ###
    #    puts "Top 25 films by rank"
    #    puts ""
    #    (01..25).each   {|i| print "#{i} "}
    #end
#
    #def middle(input)               ###
    #    puts "These are not the best movies but they're not the worst"
    #    puts ""
    #    puts (26..50).each    {|i| print "#{i} "}
    #end


    #def self.option_1(input)
    #    
    #    if 1 == input
    #    puts "Top 25 films by rank"
    #    puts ""
    #    (01..25).each    {|i| print "#{i} "}
    #    
    #    
    #    else if 2 == input
    #    puts "These are not the best movies but #they're not the worst"
    #    puts ""
    #    (26..50).each    {|i| print "#{i} "}
    #    puts ""
    #    (51..74).each    {|i| print "#{i} "}
    #    else if 3 == input
    #        puts "These are the worst of the #best!"
    #        puts ""
    #    (75..100).each   {|i| print "#{i} "}
    #    end
    #    end
    #    end 
    #end