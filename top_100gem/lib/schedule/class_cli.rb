
class Schedule::Class_Cli

  def call
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
      Schedule::Movies.option_1(input)
    else
      puts "I dont know that one.. Please pick a ranking from the list provided"
      puts ""
      puts ""
      start
    end
    puts ""
    puts "Please pick a ranking number to see which movie placed!"
    input = gets.strip.to_i
    Schedule::Scraper.new.make_movies(input)
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

  def list_places
    puts "1)     Top Ranking Titles"
    puts "2)     Not the Best/ Not the Worst"
    puts "3)     Bottom Ranking Titles"
  end
end