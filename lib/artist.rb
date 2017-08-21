class Artist
  attr_accessor :name
  attr_reader :songs, :genres

  ALL = []

  def initialize(name)
    @name = name
    @songs = []
    ALL << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.map { |song| song.genre }
  end

  def self.all
    ALL
  end

end
