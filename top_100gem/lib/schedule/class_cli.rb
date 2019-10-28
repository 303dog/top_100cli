
class Schedule::Class_Cli
  def call
    puts "Here you can discover the Top 100 movies as decided by IMDb.com"
    start
  end
  def start
    puts ""
    puts "Pick a number from the list provided to see what movie placed!"
    puts ""
    list_places
    puts ""
    puts "        Type your choice below and press 'enter'"
    puts ""
    input = gets.strip.to_i
    if 1.upto(100).include?(input)
      puts "The results are in....."
      Schedule::Scraper.new.make_movies(input)
    else
      puts "I dont know that one.. Please pick a year from the list provided"
      puts ""
      puts ""
      start
    end
    puts "Hit any key to quit or 'Y' to see another placing"
    input = gets.strip.downcase
    if input == "y"
      puts ""
      puts "----------Alrighty then...-----------"
      start
    else
      puts ""
      puts "See you soon!"
      puts ""
      exit
    end
  end
  def list_places
    (01..22).each   {|i| print "#{i} "}
    puts ""
    (23..41).each   {|i| print "#{i} "}
    puts ""
    (42..60).each   {|i| print "#{i} "}
    puts ""
    (61..79).each   {|i| print "#{i} "}
    puts ""
    (80..98).each   {|i| print "#{i} "}
    puts ""
    (99..100).each  {|i| print "#{i} "}
    puts ""
  end
end