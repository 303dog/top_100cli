require 'pry'
#require '../lib/Scraper.rb'


class Schedule::Movies < Schedule::Scraper  

    def create_movie_by_name(input)
        #user input to select movie?
        Schedule::Scraper.new.make_movies(input)
        binding.pry
    end

    def self.create_from_collection
        #iterate thr the index of scraped movies 
        self.scrape_movies_index #returns an array of hashes, 
        #we want to iterate thru the arrya to access each seperate hash and create a new movie to create a new movie with attributes
    end
    
    #title = 


    

end
