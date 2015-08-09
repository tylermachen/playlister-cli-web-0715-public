class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  extend Createable::ClassMethods

  attr_accessor :name, :songs, :genres
  @@instances = []

  def initialize(name = nil)
    @name = name
    @@instances << self
    @songs = []
    @genres = []
  end

  def self.all
    @@instances
  end

  def add_song(song)
    self.songs << song
    self.genres << song.genre
    song.genre.artists << self if song.genre
  end

  def add_songs(songs)
    songs.each { |s| self.songs << s }
  end
end
