
class Schedule::Class_Cli

  def call
    Schedule::Scraper.new.scrape_movies_index
    puts ""
    puts "                          WELCOME "
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
    choice_of_three
    last_choice
  end

  def choice_of_three
    input = gets.strip.to_i
    case (input)
    when (1)
      first_choice
    when (2)
      second_choice
    when (3)
      third_choice
    else
      choice_error(input)
    end
end

  def first_choice
    puts ""
    puts "Top 25 films by rank"
    puts "Please choose a placing and enter the corrosponding number to learn more about that film." 
    puts ""
    print_choices(Schedule::Movie.top_movies)
  end

  def second_choice
    puts ""
    puts "These are not the best movies but they're not the worst"
    puts "Please choose a placing and enter the corrosponding number to learn more about that film." 
    puts ""
    print_choices(Schedule::Movie.mid_movies)
  end

  def third_choice        
    puts ""
    puts "These are the worst of the Best!"
    puts "Please choose a placing and enter the corrosponding number to learn more about that film."   
    puts ""
    print_choices(Schedule::Movie.bottom_movies)
  end

  def print_choices(movies)
    movies.each {|m| puts "Voted ##{m.title}       
      ....(#{m.genre})"}
  end

  def choice_error(i)
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

  def last_choice
    puts ""
    puts "Awesome! Now you just need to enter the <Voted#> that's next to the movie you would like more details on!"
    input = gets.strip.to_i - 1
   # Schedule::Movie.movie_choice(input)
    print_movie_details(input)
    puts "To return back to the main menu please press...     *B*"
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

  def print_movie_details(index)
    movie = Schedule::Movie.all[index]
    puts ""
    puts "The title you chose is at number #{movie.title}."
    puts "This popular filmis ranked ##{movie.ranking} on the ImbD.com website."
    puts "You'll enjoy this movie if you're into #{movie.genre}."
    puts "This movie is #{movie.length} long."
    puts "This film was directed by #{movie.director}."
    puts "Members of the cast include: #{movie.cast}."
    puts "A brief summary: #{movie.summary}."
    puts ""
  end
end