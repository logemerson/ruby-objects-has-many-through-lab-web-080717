class Genre
  attr_accessor :name

  ALL = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Artist.all.select do |artist|
      artist.genres.include?(self)
    end
  end

  def add_song(song)
  end
end
