
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
    puts ""
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

  def self.choice_error(i)
    puts ""    
    puts "***          You typed (#{i}), which is not an option.              ***" 
    puts "***                    Let's try this again.                     ***"
    puts "***       Please pick a number from the list provided.           ***"
    puts ""
    puts ""
    puts ""
    puts "              1)     Top Ranking Titles"
    puts "              2)     Not the Best/ Not the Worst"
    puts "              3)     Bottom Ranking Titles"
  end

  def self.last_choice
    puts ""
    puts "Awesome! Now you just need to enter the <Voted#> that's next to the movie you would like more details on!"
    input = gets.strip.to_i[-1]
    movie = Schedule::Movie.all[input]
    print_movie_details(input)
    puts "To return back to the main menuplease press...     *B*"
    puts "To quit the program please press..                 *enter*"
    #continue_choice
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

  def self.print_movie_details(m)
    Schedule::Movie.all[-1]
    puts ""
    puts "The title you chose is at number #{Schedule::Movie.all[m].title}."
 #   puts "This popular filmis ranked ##{movie.ranking} on the ImbD.com website."
 #   puts "You'll enjoy this movie if you're into #{movie.genre}."
 #   puts "This movie is #{movie.length} long."
 #   puts "This film was directed by #{movie.director}."
 #   puts "Members of the cast include: #{movie.cast}."
 #   puts "A brief summary: #{movie.summary}."
 #   puts ""
  end
end