
class Schedule::Movie

    attr_accessor :title, :length, :genre, :summary, :ranking, :cast, :director

    @@all = []

    def initialize(title, length, genre, summary, ranking, cast, director)
        @title = title
        @length = length
        @genre = genre
        @summary = summary
        @ranking = ranking
        @cast = cast
        @director = director
        @@all << self
    end

    def self.all
       @@all
    end 

    def self.choice_of_three
        input = gets.strip.to_i
        case (input)
        when (1)
          Schedule::Class_Cli.first_choice
        when (2)
          Schedule::Class_Cli.second_choice
        when (3)
          Schedule::Class_Cli.third_choice
        else
          Schedule::Class_Cli.choice_error(input)
        end
    end

    def self.create_first_choice
      self.all[0..32].each {|m| puts "Voted ##{m.title}       
      ....(#{m.genre})"}
      Schedule::Class_Cli.last_choice
    end

    def self.create_second_choice
      self.all[32..65].each {|m| puts "#{m.title}      
      ....(#{m.genre})"}
    end

    def self.create_third_choice
      self.all[66..100].each {|m| puts "#{m.title}     
      ....(#{m.genre})"}
    end


    end

    
    
    
  