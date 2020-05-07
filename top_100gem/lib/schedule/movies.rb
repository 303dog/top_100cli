require 'pry'


class Schedule::Movies < Schedule::Scraper  

    def create_movie_by_name(input)                                             
        Schedule::Scraper.new.make_movies(input)                #user input to select movie
    end

    def self.create_from_collection
        self.scrape_movies_index
    end
    
    def self.option_1(input)
        if 1 == input
            puts "Top 25 films by rank"
            puts ""
        (01..25).each    {|i| print "#{i} "}
        #else 
        else if 2 == input
            puts "These are not the best movies but they're not the worst"
            puts ""
        (26..50).each    {|i| print "#{i} "}
        puts ""
        (51..74).each    {|i| print "#{i} "}
        else if 3 == input
            puts "These are the worst of the best!"
            puts ""
        (75..100).each   {|i| print "#{i} "}
        end
        end
        end 
    end
end