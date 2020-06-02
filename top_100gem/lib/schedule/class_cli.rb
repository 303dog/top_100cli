
class Schedule::Class_Cli

  def call
    Schedule::Scraper.new.scrape_movies_index
    puts ""
    puts "Here you can discover the Top 100 movies as decided by IMDb.com"
    start
  end

  def start
    puts ""
    puts "MAIN MENU"
    puts ""
    list_places
    puts ""
    puts "        Type the number of your choice (1,2 or 3) below and press 'enter'"
    puts ""
    Schedule::Movie.choice_of_three
  end

  def self.first_choice
    puts ""
    puts "Top 25 films by rank"
    puts "Please choose a placing and enter the corrosponding number to learn more about that film." 
    Schedule::Movie.create_first_choice
  end

  def self.second_choice
    puts ""
    puts "These are not the best movies but they're not the worst"
    puts "Please choose a placing and enter the corrosponding number to learn more about that film." 
    puts ""
    Schedule::Movie.create_second_choice
  end

  def self.third_choice        
    puts ""
    puts "These are the worst of the Best!"
    puts "Please choose a placing and enter the corrosponding number to learn more about that film."   
    puts ""
    Schedule::Movie.create_third_choice
  end

  def choice_error
    puts ""    
    puts "***        I dont know that one..               ***" 
    puts "***Please pick a ranking #from the list provided***"
    puts ""
    start
  end



  def last_choice
    puts ""
    puts "Please pick a ranking number to seewhich movie placed!"
    input = gets.strip.to_i[-1]
    movie = Schedule::Movie.all[input]
    print_movie_details(movie)
    puts "To return back to the main menuplease press...     *B*"
    puts "To quit the program please press..                 *enter*"
  end
  def continue_choice(input)
    input = gets.strip.downcase
    if input == "b"
      puts ""
      puts "----------Alrighty then..-----------"
    start
    else
     puts ""
     puts "See you soon, Have a great day!!"
     puts ""
    exit
    end
  end
  
  
  def list_places
    puts "1)     Top Ranking Titles"
    puts "2)     Not the Best/ Not the Worst"
    puts "3)     Bottom Ranking Titles"
  end

  def print_movie_details
    puts ""
     puts "The title you chose is #{movie.title}."
    puts "#{movie.title} is ranked number ##{movie.ranking} on the ImbD.com website."
    puts "#{movie.title} is considered a #{movie.genre}."
    puts "This movie is #{movie.length} mins long."
    puts "#{movie.title} was directed by #{movie.director}."
    puts "Memebers of the cast include #{movie.cast}."
    puts "A brief summary: #{movie.summary}."
    puts ""
  end
end