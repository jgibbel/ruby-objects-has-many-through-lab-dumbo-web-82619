class Genre 
  attr_reader :name 
  
  @@all = []
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def songs 
    Song.select {|song| song.genre == self}
  end 
  
  def artists
    @@all.select {|song| song.artist}
  end 
  
end 