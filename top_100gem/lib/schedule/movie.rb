require 'pry'


class Schedule::Movie
#class Movie
    attr_accessor :title, :length, :genre, :summary, :ranking, :cast, :director

    @@all = []

    def initialize(title, length, genre, summary, rank, cast, director)
        @title = title
        @length = length
        @genre = genre
        @summary = summary
        @rank = rank
        @cast = cast
        @director = director
        @@all << self
       # binding.pry
    end
     def self.all
        @@all
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