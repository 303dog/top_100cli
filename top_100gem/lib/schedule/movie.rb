require 'pry'


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
       # binding.pry
    end

    def self.all
       @@all
    end 

    def self.choice_of_three
        input = gets.strip.to_i
        if 1.upto(3).include?(input)
        if input == 1
          Schedule::Class_Cli.first_choice
        elsif input == 2 
          Schedule::Class_Cli.second_choice
        elsif input == 3 
          Schedule::Class_Cli.third_choice
        elsif
          Schedule::Class_Cli.choice_error
        end
        end
    end

    def self.create_first_choice
      self.all[0..32].each {|m| puts "#{m.title}       
      ....(#{m.genre})"}
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

    
    
    
  