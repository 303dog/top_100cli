
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
    input = gets.strip.to_i
    if 1.upto(3).include?(input)
      if input == 1
        puts "Top 25 films by rank"
        (01..25).each    {|i| print "#{i} "}
      elsif input == 2
        puts "These are not the best movies but #they're not the worst"
        puts ""
        (26..50).each    {|i| print "#{i} "}
        puts ""
        (51..74).each    {|i| print "#{i} "}
      elsif input == 3
        puts "These are the worst of the #best!"
        puts ""
        (75..100).each   {|i| print "#{i} "}
      else
    puts ""    
    puts "I dont know that one.. Please pick a ranking from the list provided"
    puts ""
    puts ""
    start
      end
    puts ""
    puts "Please pick a ranking number to see which movie placed!"
    input = gets.strip.to_i - 1
    movie = Schedule::Movie.all[input]
    print_movie_details(movie)
    puts "To return back to the main menu please press...     *B*"
    puts "To quit the program please press...                 *enter*"
    input = gets.strip.downcase
    if input == "b"
      puts ""
      puts "----------Alrighty then...-----------"
      start
    else
      puts ""
      puts "See you soon, Have a great day!!"
      puts ""
      exit
    end
    end
  end
  
  def list_places
    puts "1)     Top Ranking Titles"
    puts "2)     Not the Best/ Not the Worst"
    puts "3)     Bottom Ranking Titles"
  end

  def print_movie_details(movie)
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