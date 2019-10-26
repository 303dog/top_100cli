
class Schedule::Class_Cli

    def call
        puts "Here you can discover the Top 100 movies as decided by IMDb.com"
        start
    end

    def start
        puts ""
        puts "Pick a number from the list provided to see the ranking!"
        puts ""
        list_rankings
        puts ""
        puts "Type your choice below and press 'enter'"
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
        puts "Hit any key to quit or 'Y' to see another ranking"
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

    def list_rankings
     puts 1.upto(20)    {|i| print "#{i} "}
     puts 21.upto(40)   {|i| print "#{i} "}
     puts 41.upto(60)   {|i| print "#{i} "}
     puts 61.upto(80)   {|i| print "#{i} "}
     puts 81.upto(100)  {|i| print "#{i} "}
    end

end
