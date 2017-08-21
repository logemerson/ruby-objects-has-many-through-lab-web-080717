class Song
  attr_accessor :title, :artist, :genre

  ALL = []

  def initialize (title, genre)
    @title = title
    @genre = genre
    ALL << self
  end

  def self.all
    ALL
  end
  
end
