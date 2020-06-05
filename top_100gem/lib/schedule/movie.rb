
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

  def self.top_movies
    self.all[0..32]
  end

  def self.mid_movies
    self.all[32..65]
  end

  def self.bottom_movies
    self.all[66..100]
  end

  def self.movie_choice(m)
    self.all[m] = Schedule::Class_Cli.print_movie_details(m)
  end

end

    
    
    
  